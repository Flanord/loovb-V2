@include('dashboard.components.header')
@php
    enqueue_style('confirm-css');
    enqueue_script('confirm-js');
@endphp
<div id="wrapper">
    @include('dashboard.components.top-bar')
    @include('dashboard.components.nav')
    <div class="content-page">
        <div class="content">
            @include('dashboard.components.breadcrumb', ['heading' => __('Pages')])
            {{--Start Content--}}
            @php

                    $search = request()->get('_s');
                    $order = request()->get('order', 'asc');
            @endphp
            <div class="card-box">
                <div class="header-area d-flex align-items-center">
                    <h4 class="header-title mb-0">{{__('Toutes les Pages')}}</h4>
                    <form class="form-inline right d-none d-sm-block" method="get">
                        <div class="form-group">
                            <input type="text" class="form-control" name="_s"
                                   value="{{ $search }}"
                                   placeholder="{{__('Pages de recherche')}}">
                        </div>
                        <button type="submit" class="btn btn-default"><i class="ti-search"></i></button>
                    </form>
                </div>
                @php
                    enqueue_style('datatables-css');
                    enqueue_script('datatables-js');
                    enqueue_script('pdfmake-js');
                    enqueue_script('vfs-fonts-js');
                    enqueue_script('nice-select-js');
                    enqueue_style('nice-select-css');
                @endphp
                <div class="action-toolbar">
                    <form class="hh-form form-inline" action="{{dashboard_url('page-bulk-actions')}}" data-target="#table-my-page" method="post">
                        <select class="mr-1 min-w-100" name="action" data-plugin="customselect">
                            <option value="none">{{__('Actions en vrac')}}</option>
                            <option value="publish">{{__('Publier')}}</option>
                            <option value="draft">{{__('Brouillon')}}</option>
                            <option value="trash">{{__('Poubelle')}}</option>
                            <option value="delete">{{__('Supprimer')}}</option>
                        </select>
                        <button type="submit" class="btn btn-success">{{__('Appliquer')}}</button>
                    </form>
                </div>
                <table id="table-my-page" class="table table-large mb-0 dt-responsive nowrap w-100" data-plugin="datatable"
                       data-paging="false"
                       data-ordering="false">
                    <thead>
                    <tr>
                        @php
                            $_order = ($order == 'asc') ? 'desc' : 'asc';
                            $url = add_query_arg([
                                'orderby' => 'created_at',
                                'order' => $_order
                            ]);
                        @endphp
                        <th data-priority="-1" class="hh-checkbox-td">
                            <div class="checkbox checkbox-success hh-check-all">
                                <input id="hh-checkbox-all--my-page" type="checkbox">
                                <label for="hh-checkbox-all--my-page"><span class="d-none">{{__('Vérifie tout')}}</span></label>
                            </div>
                        </th>
                        <th data-priority="1">
                            {{__('Nom')}}
                        </th>
                        <th data-priority="2" class="text-center">
                            <div class="dropdown">
                                <a class="dropdown-toggle not-show-caret" id="dropdownFilterStatus"
                                   data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    {{__('Status')}}
                                    <i class="icon-arrow-down"></i>
                                </a>
                                <div class="dropdown-menu" aria-labelledby="dropdownFilterStatus">
                                    <a class="dropdown-item" href="{{ remove_query_arg('status') }}">{{__('Toutes')}}</a>
                                    <a class="dropdown-item" href="{{ add_query_arg('status', 'publish') }}">{{__('Publier')}}</a>
                                    <a class="dropdown-item" href="{{ add_query_arg('status', 'draft') }}">{{__('Brouillon')}}</a>
                                </div>
                            </div>
                        </th>
                        <th data-priority="4">
                            <a href="{{ $url }}" class="order">
                                {{__('Créé à')}}
                                @if($order == 'asc')
                                    <i class="icon-arrow-down"></i>
                                @else
                                    <i class="icon-arrow-up"></i>
                                @endif
                            </a>
                        </th>
                        <th data-priority="-1" class="text-center">{{__('Actions')}}</th>
                    </tr>
                    </thead>
                    <tbody>
                    @if ($allPages['total'])
                        @foreach ($allPages['results'] as $item)
                            <tr>
                                <td class="align-middle hh-checkbox-td">
                                    <div class="checkbox checkbox-success">
                                        <input type="checkbox" name="post_id" value="{{$item->post_id}}" id="hh-check-all-item-{{$item->post_id}}" class="hh-check-all-item">
                                        <label for="hh-check-all-item-{{$item->post_id}}"></label>
                                    </div>
                                </td>
                                <td class="align-middle">
                                    <div class="media align-items-center">
                                        @php
                                            $img_url = get_attachment_url(get_translate($item->thumbnail_id), [70, 70]);
                                            $img_alt = get_attachment_alt(get_translate($item->thumbnail_id));
                                        @endphp
                                        <img src="{{ $img_url }}" class="d-none d-md-block mr-3"
                                             alt="{{ $img_alt }}">
                                        <div class="media-body">
                                            <h5 class="m-0">
                                                <a href="{{ get_the_permalink($item->post_id, $item->post_slug, 'page') }}" target="_blank">
                                                    {{ get_translate($item->post_title) }}
                                                </a>
                                                <span class="text-muted"> - {{ $item->post_id }}</span>
                                            </h5>
                                        </div>
                                    </div>
                                </td>
                                <td class="align-middle text-center">
                                    <div class="service-status {{ $item->status }} status-icon"
                                         data-toggle="tooltip" data-placement="right" title=""
                                         data-original-title="{{ Illuminate\Support\Str::studly($item->status) }}"><span
                                                class="d-none">{{ Illuminate\Support\Str::studly($item->status) }}</span>
                                    </div>
                                </td>
                                <td class="align-middle">
                                    <strong>{{ date(hh_date_format(), $item->created_at) }}</strong>
                                </td>
                                <td class="align-middle text-center">
                                    <div class="dropdown d-inline-block">
                                        <?php
                                        $data = [
                                            'pageID' => $item->post_id,
                                            'pageEncrypt' => hh_encrypt($item->post_id),
                                        ];
                                        ?>
                                        <a href="javascript: void(0)" class="dropdown-toggle table-action-link"
                                           data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i
                                                    class="ti-settings"></i></a>
                                        <div class="dropdown-menu dropdown-menu-right">
                                            <a href="{{ url('dashboard/edit-page/' . $item->post_id ) }}"
                                               class="dropdown-item">{{__('Modifier')}}</a>
                                            @php
                                                $page_status_info = page_status_info();
                                            @endphp
                                            @foreach($page_status_info as $key => $status)
                                                @if($key != $item->status)
                                                    @php
                                                        $data = [
                                                            'serviceID' => $item->post_id,
                                                            'serviceEncrypt' => hh_encrypt($item->post_id),
                                                            'status' => $key
                                                        ];
                                                    @endphp
                                                    <a class="dropdown-item hh-link-action hh-link-change-status-page"
                                                       data-action="{{ dashboard_url('change-page-status') }}"
                                                       data-parent="tr"
                                                       data-is-delete="false"
                                                       data-params="{{ base64_encode(json_encode($data)) }}"
                                                       href="javascript: void(0)">{{ __('Change to :status', ['status' => $status['name']]) }}</a>
                                                @endif
                                            @endforeach
                                            <a class="dropdown-item hh-link-action hh-link-delete-page text-danger"
                                               data-action="{{ dashboard_url('delete-page-item') }}"
                                               data-parent="tr"
                                               data-is-delete="true"
                                               data-params="{{ base64_encode(json_encode($data)) }}"
                                               data-confirm="yes"
                                               data-confirm-title="{{__('Confirmation de la suppression')}}"
                                               data-confirm-question="{{__('Voulez-vous vraiment supprimer cette page?')}}"
                                               data-confirm-button="{{__('Supprime-le!')}}"
                                               href="javascript: void(0)">{{__('Supprimer')}}</a>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                        @endforeach
                    @else
                        <tr>
                            <td colspan="6">
                                <h4 class="mt-3 text-center">{{__('Pas encore de pages.')}}</h4>
                            </td>
                        </tr>
                    @endif
                    </tbody>
                </table>
                <div class="clearfix mt-2">
                    {{ dashboard_pagination(['total' => $allPages['total']]) }}
                </div>
            </div>
            {{--End content--}}
            @include('dashboard.components.footer-content')
        </div>
    </div>
</div>
@include('dashboard.components.footer')
