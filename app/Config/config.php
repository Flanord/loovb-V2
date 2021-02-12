<?php
return [
    'pages_name' => [
        'home' => [
            'label' => awe_lang('Accueil'),
            'screen' => 'home-page'
        ],
        'home-demo' => [
            'label' => awe_lang('Accueil demo'),
            'screen' => 'home-demo'
        ],
        'experience-demo' => [
            'label' => awe_lang('Découvrez la démo'),
            'screen' => 'experience-demo'
        ],
        'car-demo' => [
            'label' => awe_lang('Démo de voiture'),
            'screen' => 'car-demo'
        ],
        'home_search_results' => [
            'label' => awe_lang('Rechercher des maisons'),
            'screen' => 'home-search-result'
        ],
        'experience_search_results' => [
            'label' => awe_lang('Rechercher des expériences'),
            'screen' => 'experience-search-result'
        ],
        'car_search_results' => [
            'label' => awe_lang('Rechercher des voitures'),
            'screen' => 'car-search-result'
        ],
        'contact' => [
            'label' => awe_lang('Nous contacter'),
            'screen' => 'contact-us'
        ],
        'become-a-host' => [
            'label' => awe_lang('Devenez hôte'),
            'screen' => 'become-a-host'
        ],
        'thank-you' => [
            'label' => awe_lang("Merci d'utiliser notre service"),
            'screen' => 'thank-you'
        ],
        'thank-you-post' => [
            'label' => awe_lang("Thank for using our service"),
            'screen' => 'thank-you'
        ],
        'check-out' => [
            'label' => awe_lang('Checkout'),
            'screen' => 'check-out'
        ],
        'welcome-user' => [
            'label' => awe_lang('Votre a été enregistré avec succès'),
            'screen' => 'welcome-user'
        ]
    ],
    'menu_location' => [
        'primary' => awe_lang('Primary')
    ],
    'post_types' => [
        'home' => [
            'name' => awe_lang('Home'),
            'names' => awe_lang('Homes'),
            'slug' => 'home',
            'search_slug' => 'home-search-result'
        ],
        'experience' => [
            'name' => awe_lang('Experience'),
            'names' => awe_lang('Experiences'),
            'slug' => 'experience',
            'search_slug' => 'experience-search-result'
        ],
        'car' => [
            'name' => awe_lang('Car'),
            'names' => awe_lang('Cars'),
            'slug' => 'car',
            'search_slug' => 'car-search-result'
        ],
        'post' => [
            'name' => awe_lang('Post'),
            'names' => awe_lang('Posts'),
            'slug' => 'post'
        ],
        'page' => [
            'name' => awe_lang('Page'),
            'names' => awe_lang('Pages'),
            'slug' => 'page'
        ],
    ],
    'payment_gateways' => [
        'bank_transfer' => 'BankTransfer',
        'paypal' => 'Paypal',
        'stripe' => 'Stripe'
    ],
    'page_status' => [
        'publish' => [
            'name' => awe_lang('Publish')
        ],
        'draft' => [
            'name' => awe_lang('Draft')
        ],
        'trash' => [
            'name' => awe_lang('Trash')
        ]
    ],
    'post_status' => [
        'publish' => [
            'name' => awe_lang('Publish')
        ],
        'draft' => [
            'name' => awe_lang('Draft')
        ],
        'trash' => [
            'name' => awe_lang('Trash')
        ]
    ],
    'service_status' => [
        'publish' => [
            'name' => awe_lang('Publish')
        ],
        'pending' => [
            'name' => awe_lang('Pending')
        ],
        'draft' => [
            'name' => awe_lang('Draft')
        ],
        'trash' => [
            'name' => awe_lang('Trash')
        ]
    ],
    'payout_status' => [
        'pending' => [
            'name' => awe_lang('Pending')
        ],
        'completed' => [
            'name' => awe_lang('Completed')
        ]
    ],
    'booking_status' => [
        'pending' => [
            'label' => awe_lang('En attente'),
            'icon' => 'fe-alert-triangle',
            'payment_text' => awe_lang("Votre paiement n'a pas été confirmé")
        ],
        'incomplete' => [
            'label' => awe_lang('Incomplèt'),
            'icon' => 'fe-alert-circle',
            'payment_text' => awe_lang('Votre réservation est en cours de traitement')
        ],
        'completed' => [
            'label' => awe_lang('Terminé'),
            'icon' => 'fe-check-circle',
            'payment_text' => awe_lang('Votre paiement a réussi')
        ],
        'canceled' => [
            'label' => awe_lang('Annulé'),
            'icon' => 'fe-x-circle',
            'payment_text' => awe_lang('Votre paiement a été annulé')
        ],
        'refunded' => [
            'label' => awe_lang('Remboursé'),
            'icon' => 'fe-x-circle',
            'payment_text' => awe_lang('Votre paiement a été remboursé')
        ],
    ],
    'user_roles' => [
        'administrator' => awe_lang('Administrateur'),
        'partner' => awe_lang('Partenaire'),
        'customer' => awe_lang('Client'),
    ],
    'checkout_slug' => 'checkout',
    'after_checkout_slug' => 'thank-you',
    'prefix_dashboard' => 'dashboard',
    'prefix_auth' => 'auth',
    'key_encrypt' => 'hh',
    'date_format' => 'm-d-Y',
    'time_format' => 'h:i A',
    'media_size' => [
        'large' => [1200, 900],
        'medium' => [800, 600],
        'small' => [400, 300]
    ],
    'media_uploads' => [
        'admin' => [
            'type' => ['image/png', 'image/jpg', 'image/jpeg', 'image/svg+xml', 'image/gif'],
            'size' => 1,//Mb
            'message' => [
                'type' => awe_lang('Only JPG, PNG, JPEG, SVG, GIF files types are supported.'),
                'size' => awe_lang('Maximum file size is 1MB. ')
            ]
        ],
        'partner' => [
            'type' => ['image/png', 'image/jpg', 'image/jpeg', 'image/gif'],
            'size' => 1,
            'message' => [
                'type' => awe_lang('Only JPG, PNG, JPEG, GIF files types are supported.'),
                'size' => awe_lang('Maximum file size is 1MB. ')
            ]
        ],
        'customer' => [
            'type' => ['image/png', 'image/jpg', 'image/jpeg', 'image/gif'],
            'size' => 1,
            'message' => [
                'type' => awe_lang('Only JPG, PNG, JPEG, GIF files types are supported.'),
                'size' => awe_lang('Maximum file size is 1MB. ')
            ]
        ],
    ],
    'posts_per_page' => 12,
    'comments_per_page' => 10,
    'gender' => [
        'male' => awe_lang('Male'),
        'female' => awe_lang('Female'),
        'other' => awe_lang('Other'),
    ],
    'admin_menu' => [
        [
            'type' => 'heading',
            'label' => awe_lang('Général')
        ],
        [
            'type' => 'item',
            'label' => awe_lang('Tableau de bord'),
            'icon' => '001_dashboard',
            'screen' => 'dashboard',
        ],
        [
            'type' => 'item',
            'label' => awe_lang('Votre profil'),
            'icon' => '011_user_1',
            'screen' => 'profile',
        ],
        [
            'type' => 'item',
            'label' => awe_lang('Notifications'),
            'icon' => '003_error',
            'screen' => 'all-notifications',
        ],
        [
            'type' => 'parent',
            'label' => awe_lang('Pages'),
            'icon' => '005_website',
            'child' => [
                [
                    'type' => 'item',
                    'label' => awe_lang('Toutes les pages'),
                    'screen' => 'all-page',
                ],
                [
                    'type' => 'hidden',
                    'label' => awe_lang('Modifier la page'),
                    'screen' => 'edit-page',
                ],
                [
                    'type' => 'item',
                    'label' => awe_lang('Ajouter une nouvelle page'),
                    'screen' => 'add-new-page',
                ]
            ],
            'screen' => ['all-page', 'edit-page', 'add-new-page']
        ],
        [
            'type' => 'parent',
            'label' => awe_lang('Article'),
            'icon' => '004_post',
            'child' => [
                [
                    'type' => 'item',
                    'label' => awe_lang('Ajouter un nouveau article'),
                    'screen' => 'add-new-post',
                ],
                [
                    'type' => 'hidden',
                    'label' => awe_lang('Modifier article'),
                    'screen' => 'edit-post',
                ],
                [
                    'type' => 'item',
                    'label' => awe_lang('Tous les articles'),
                    'screen' => 'all-post',
                ],
                [
                    'type' => 'item',
                    'label' => awe_lang('Categories'),
                    'screen' => 'get-terms/post-category',
                ],
                [
                    'type' => 'item',
                    'label' => awe_lang('Mots clés'),
                    'screen' => 'get-terms/post-tag',
                ],
                [
                    'type' => 'item',
                    'label' => awe_lang('Commentaires'),
                    'screen' => 'comment',
                ]
            ],
            'screen' => ['all-post', 'edit-post', 'add-new-post', 'get-terms/post-category', 'get-terms/post-tag', 'comment']
        ],
        [
            'type' => 'heading',
            'services' => ['car', 'home', 'experience'],
            'label' => awe_lang('tous les services')
        ],
        [
            'type' => 'parent',
            'label' => awe_lang('Location'),
            'service' => 'home',
            'icon' => '006_home',
            'child' => [
                [
                    'type' => 'item',
                    'label' => awe_lang('Ajouter une nouvelle maison'),
                    'screen' => 'add-new-home',
                ],
                [
                    'type' => 'item',
                    'label' => awe_lang('Mes maisons'),
                    'screen' => 'my-home',
                ],
                [
                    'type' => 'hidden',
                    'label' => awe_lang('Modifier la maison'),
                    'screen' => 'edit-home',
                ],
                [
                    'type' => 'item',
                    'label' => awe_lang('Commentaires'),
                    'screen' => 'review/home',
                ],
                [
                    'type' => 'item',
                    'label' => awe_lang('Types'),
                    'screen' => 'get-terms/home-type',
                ],
                [
                    'type' => 'item',
                    'label' => awe_lang('Agréments'),
                    'screen' => 'get-terms/home-amenity',
                ],
            ],
            'screen' => ['add-new-home', 'my-home', 'edit-home', 'review/home', 'get-terms/home-type', 'get-terms/home-amenity']
        ],
        [
            'type' => 'parent',
            'label' => awe_lang('Experiences'),
            'service' => 'experience',
            'icon' => '001_tour',
            'child' => [
                [
                    'type' => 'item',
                    'label' => awe_lang('Add new Experience'),
                    'screen' => 'add-new-experience',
                ],
                [
                    'type' => 'item',
                    'label' => awe_lang('My Experiences'),
                    'screen' => 'my-experience',
                ],
                [
                    'type' => 'hidden',
                    'label' => awe_lang('Edit Experience'),
                    'screen' => 'edit-experience',
                ],
                [
                    'type' => 'item',
                    'label' => awe_lang('Reviews'),
                    'screen' => 'review/experience',
                ],
                [
                    'type' => 'item',
                    'label' => awe_lang('Types'),
                    'screen' => 'get-terms/experience-type',
                ],
                [
                    'type' => 'item',
                    'label' => awe_lang('Languages'),
                    'screen' => 'get-terms/experience-languages',
                ],
                [
                    'type' => 'item',
                    'label' => awe_lang('Inclusions'),
                    'screen' => 'get-terms/experience-inclusions',
                ],
                [
                    'type' => 'item',
                    'label' => awe_lang('Exclusions'),
                    'screen' => 'get-terms/experience-exclusions',
                ],
            ],
            'screen' => ['add-new-experience', 'my-experience', 'edit-experience', 'review/experience', 'get-terms/experience-type', 'get-terms/experience-languages', 'get-terms/experience-inclusions', 'get-terms/experience-exclusions']
        ],
        [
            'type' => 'parent',
            'label' => awe_lang('Voitures'),
            'service' => 'car',
            'icon' => '003_steering_wheel',
            'child' => [
                [
                    'type' => 'item',
                    'label' => awe_lang('Ajouter une nouvelle voiture'),
                    'screen' => 'add-new-car',
                ],
                [
                    'type' => 'item',
                    'label' => awe_lang('Mes voitures'),
                    'screen' => 'my-car',
                ],
                [
                    'type' => 'hidden',
                    'label' => awe_lang('Modifier la voiture'),
                    'screen' => 'edit-car',
                ],
                [
                    'type' => 'item',
                    'label' => awe_lang('Les types'),
                    'screen' => 'get-terms/car-type',
                ],
                [
                    'type' => 'item',
                    'label' => awe_lang('Équipements'),
                    'screen' => 'get-terms/car-equipment',
                ],
                [
                    'type' => 'item',
                    'label' => awe_lang('Caractéristiques'),
                    'screen' => 'get-terms/car-feature',
                ],
                [
                    'type' => 'item',
                    'label' => awe_lang('Commentaires'),
                    'screen' => 'review/car',
                ],
            ],
            'screen' => ['add-new-car', 'my-car', 'edit-car', 'review/car', 'get-terms/car-type', 'get-terms/car-equipment', 'get-terms/car-feature']
        ],
        [
            'type' => 'heading',
            'label' => awe_lang('Réservation'),
        ],
        [
            'type' => 'item',
            'label' => awe_lang('Réservations'),
            'icon' => '007_bars',
            'screen' => 'all-booking',
        ],
        [
            'type' => 'heading',
            'label' => awe_lang('Paramètres système'),
        ],
        [
            'type' => 'item',
            'label' => awe_lang('Paramètres'),
            'icon' => '008_settings',
            'screen' => 'settings',
        ],
        [
            'type' => 'item',
            'label' => awe_lang('Les menus'),
            'icon' => '009_menu',
            'screen' => 'menus',
        ],
        [
            'type' => 'item',
            'label' => awe_lang('Médias'),
            'icon' => '010_gallery',
            'screen' => 'media',
        ],
        [
            'type' => 'item',
            'label' => awe_lang('Utilisateurs'),
            'icon' => '002_user',
            'screen' => 'user-management',
        ],
        [
            'type' => 'item',
            'label' => awe_lang('Inscription partenaire'),
            'icon' => '002_user',
            'screen' => 'partner-registration',
        ],
        [
            'type' => 'item',
            'label' => awe_lang('Coupons'),
            'icon' => '012_voucher',
            'screen' => 'coupon',
        ],
        [
            'type' => 'item',
            'label' => awe_lang('Paiements'),
            'icon' => 'transfer',
            'screen' => 'payout',
        ],
        [
            'type' => 'heading',
            'label' => awe_lang('Outils'),
        ],
        [
            'type' => 'item',
            'label' => awe_lang('Langues'),
            'icon' => '001_language',
            'screen' => 'language',
        ],
        [
            'type' => 'item',
            'label' => awe_lang('Traduction'),
            'icon' => '002_translation',
            'screen' => 'translation',
        ],
        [
            'type' => 'item',
            'label' => awe_lang('Addons'),
            'icon' => 'web_plugin',
            'screen' => 'addons',
        ],
        [
            'type' => 'parent',
            'label' => awe_lang('Avancé'),
            'id' => 'advanced',
            'icon' => '001_repair',
            'child' => [
                [
                    'type' => 'item',
                    'label' => awe_lang("Icône d'importation de police"),
                    'screen' => 'import-fonts'
                ],
                [
                    'type' => 'item',
                    'label' => awe_lang("Vérificateur d'e-mails"),
                    'screen' => 'email-checker'
                ],
                [
                    'type' => 'item',
                    'label' => awe_lang('Compresse TinyPNG'),
                    'screen' => 'tinypng-compress'
                ]
            ],
            'screen' => ['import-fonts', 'email-checker', 'tinypng-compress']
        ],
    ],
    'partner_menu' => [
        [
            'type' => 'heading',
            'label' => awe_lang('Général'),
        ],
        [
            'type' => 'item',
            'label' => awe_lang('Tableau de bord'),
            'icon' => '001_dashboard',
            'screen' => 'dashboard',
        ],
        [
            'type' => 'item',
            'label' => awe_lang('Votre profil'),
            'icon' => '011_user_1',
            'screen' => 'profile',
        ],
        [
            'type' => 'item',
            'label' => awe_lang('Notifications'),
            'icon' => '003_error',
            'screen' => 'all-notifications',
        ],
        [
            'type' => 'heading',
            'services' => ['car', 'home', 'experience'],
            'label' => awe_lang('Tous les services')
        ],
        [
            'type' => 'parent',
            'label' => awe_lang('Maisons'),
            'service' => 'home',
            'icon' => '006_home',
            'child' => [
                [
                    'type' => 'item',
                    'label' => awe_lang('Add new Home'),
                    'screen' => 'add-new-home',
                ],
                [
                    'type' => 'item',
                    'label' => awe_lang('Mes maisons'),
                    'screen' => 'my-home',
                ],
                [
                    'type' => 'hidden',
                    'label' => awe_lang('Modifier la maison'),
                    'screen' => 'edit-home',
                ],
                [
                    'type' => 'item',
                    'label' => awe_lang('Commentaires'),
                    'screen' => 'review/home',
                ],
            ],
            'screen' => ['add-new-home', 'my-home', 'edit-home', 'review/home']
        ],
        [
            'type' => 'parent',
            'label' => awe_lang('Experiences'),
            'service' => 'experience',
            'icon' => '001_tour',
            'child' => [
                [
                    'type' => 'item',
                    'label' => awe_lang('Add new Experience'),
                    'screen' => 'add-new-experience',
                ],
                [
                    'type' => 'item',
                    'label' => awe_lang('My Experiences'),
                    'screen' => 'my-experience',
                ],
                [
                    'type' => 'hidden',
                    'label' => awe_lang('Edit Experience'),
                    'screen' => 'edit-experience',
                ],
                [
                    'type' => 'item',
                    'label' => awe_lang('Reviews'),
                    'screen' => 'review/experience',
                ],
            ],
            'screen' => ['add-new-experience', 'my-experience', 'edit-experience', 'review/experience']
        ],
        [
            'type' => 'parent',
            'label' => awe_lang('Voitures'),
            'service' => 'car',
            'icon' => '003_steering_wheel',
            'child' => [
                [
                    'type' => 'item',
                    'label' => awe_lang('Ajouter une nouvelle voiture'),
                    'screen' => 'add-new-car',
                ],
                [
                    'type' => 'item',
                    'label' => awe_lang('Mes voitures'),
                    'screen' => 'my-car',
                ],
                [
                    'type' => 'hidden',
                    'label' => awe_lang('Modifier la voiture'),
                    'screen' => 'edit-car',
                ],
                [
                    'type' => 'item',
                    'label' => awe_lang('Commentaires'),
                    'screen' => 'review/car',
                ],
            ],
            'screen' => ['add-new-car', 'my-car', 'edit-car', 'review/car']
        ],
        [
            'type' => 'heading',
            'label' => awe_lang('Réservation'),
        ],
        [
            'type' => 'item',
            'label' => awe_lang('Réservations'),
            'icon' => '007_bars',
            'screen' => 'all-booking',
        ],
        [
            'type' => 'heading',
            'label' => awe_lang('Paramètres système'),
        ],
        [
            'type' => 'item',
            'label' => awe_lang('Médias'),
            'icon' => '010_gallery',
            'screen' => 'media',
        ],
        [
            'type' => 'item',
            'label' => awe_lang('Coupons'),
            'icon' => '012_voucher',
            'screen' => 'coupon',
        ],
        [
            'type' => 'item',
            'label' => awe_lang('Paiements'),
            'icon' => 'transfer',
            'screen' => 'payout',
        ],
    ],
    'customer_menu' => [
        [
            'type' => 'heading',
            'label' => awe_lang('Général'),
        ],
        [
            'type' => 'item',
            'label' => awe_lang('Tableau de bord'),
            'icon' => '001_dashboard',
            'screen' => 'dashboard',
        ],
        [
            'type' => 'item',
            'label' => awe_lang('Votre profil'),
            'icon' => '011_user_1',
            'screen' => 'profile',
        ],
        [
            'type' => 'item',
            'label' => awe_lang('Notifications'),
            'icon' => '003_error',
            'screen' => 'all-notifications',
        ],
        [
            'type' => 'heading',
            'label' => awe_lang('Gestion des réservations'),
        ],
        [
            'type' => 'item',
            'label' => awe_lang('Réservations'),
            'icon' => '007_bars',
            'screen' => 'all-booking',
        ],
        [
            'type' => 'heading',
            'label' => awe_lang('Paramètres système'),
        ],
        [
            'type' => 'item',
            'label' => awe_lang('Médias'),
            'icon' => '010_gallery',
            'screen' => 'media',
        ],
    ],
    'home_settings' => [
        'sections' => [
            [
                'id' => 'detail_options',
                'label' => awe_lang('Details'),
            ],
            [
                'id' => 'location_options',
                'label' => awe_lang('Emplacement'),
            ],
            [
                'id' => 'pricing_options',
                'label' => awe_lang('Tarif'),
            ],
            [
                'id' => 'gallery_options',
                'label' => awe_lang('Galerie'),
                'translation' => false
            ],
            [
                'id' => 'amenities_options',
                'label' => awe_lang('Agréments'),
            ],
            [
                'id' => 'policies_options',
                'label' => awe_lang('Stratégies'),
            ],
            [
                'id' => 'availability_options',
                'label' => awe_lang('Disponibilité'),
                'translation' => false
            ],
        ],
        'fields' => [
            [
                'id' => 'post_title',
                'label' => awe_lang('Titre'),
                'type' => 'text',
                'desc' => awe_lang('Entrez un minimum de 6 caractères'),
                'validation' => 'required:|min:6:m',
                'translation' => true,
                'section' => 'detail_options'
            ],
            [
                'id' => 'post_slug',
                'label' => awe_lang('Permalien'),
                'type' => 'permalink',
                'post_type' => 'home',
                'section' => 'detail_options'
            ],
            [
                'id' => 'post_content',
                'label' => awe_lang('Détail'),
                'type' => 'editor',
                'translation' => true,
                'section' => 'detail_options'
            ],
            [
                'id' => 'post_description',
                'label' => awe_lang('La description'),
                'type' => 'textarea',
                'translation' => true,
                'section' => 'detail_options'
            ],
            [
                'id' => 'is_featured',
                'label' => awe_lang('Elle est en vedette?'),
                'type' => 'on_off',
                'permission' => ['administrator'],
                'section' => 'detail_options'
            ],
            [
                'id' => 'booking_form',
                'label' => awe_lang('Formulaire de reservation'),
                'type' => 'select',
                'choices' => [
                    'instant' => awe_lang('Instant'),
                    'enquiry' => awe_lang('Enquiry'),
                    'instant_enquiry' => awe_lang('Instant & Enquiry')
                ],
                'std' => 'instant',
                'layout' => 'col-12 col-md-6',
                'section' => 'detail_options'
            ],
            [
                'id' => 'home_type',
                'label' => awe_lang('Type de maison'),
                'type' => 'select',
                'choices' => 'terms:home-type',
                'field_type' => 'taxonomy',
                'layout' => 'col-12 col-md-6',
                'break' => true,
                'style' => 'wide',
                'section' => 'detail_options'
            ],
            [
                'id' => 'number_of_guest',
                'label' => awe_lang("Nbre d'invités"),
                'type' => 'number',
                'minlength' => 1,
                'std' => 1,
                'validation' => 'required|integer',
                'layout' => 'col-12 col-md-6',
                'section' => 'detail_options'
            ],
            [
                'id' => 'number_of_bedrooms',
                'label' => awe_lang('Nbre de chambres'),
                'type' => 'number',
                'minlength' => 1,
                'std' => 1,
                'validation' => 'required|integer',
                'layout' => 'col-12 col-md-6',
                'section' => 'detail_options'
            ],
            [
                'id' => 'number_of_bathrooms',
                'label' => awe_lang('Nbre de salles de bain'),
                'type' => 'number',
                'minlength' => 0,
                'std' => 1,
                'validation' => 'required|integer',
                'layout' => 'col-12 col-md-6',
                'section' => 'detail_options'
            ],
            [
                'id' => 'size',
                'label' => awe_lang('Taille (m2 / ft)'),
                'type' => 'text',
                'std' => 0,
                'validation' => 'required',
                'layout' => 'col-12 col-md-6',
                'break' => true,
                'section' => 'detail_options'
            ],
            [
                'id' => 'min_stay',
                'label' => awe_lang('Séjour minimum'),
                'type' => 'number',
                'minlength' => 1,
                'std' => 1,
                'validation' => 'required|integer',
                'layout' => 'col-12 col-md-6',
                'section' => 'detail_options'
            ],
            [
                'id' => 'max_stay',
                'label' => awe_lang('Séjour max'),
                'desc' => awe_lang('-1: Unlimited'),
                'type' => 'number',
                'minlength' => -1,
                'std' => -1,
                'validation' => 'required|integer',
                'layout' => 'col-12 col-md-6',
                'break' => true,
                'section' => 'detail_options'
            ],
            [
                'id' => 'location',
                'label' => awe_lang('Les paramètres de localisation'),
                'type' => 'location',
                'field_type' => 'location',
                'section' => 'location_options',
                'translation' => true
            ],
            [
                'id' => 'booking_type',
                'label' => awe_lang('Type de réservation'),
                'type' => 'select',
                'choices' => [
                    'per_night' => awe_lang('Par nuit'),
                    'per_hour' => awe_lang('Par heure'),
                ],
                'std' => 'per_night',
                'style' => 'wide',
                'layout' => 'col-12 col-md-3',
                'break' => true,
                'section' => 'pricing_options'
            ],
            [
                'id' => 'base_price',
                'label' => awe_lang('Prix de base'),
                'type' => 'text',
                'validation' => 'required',
                'layout' => 'col-12 col-md-6',
                'break' => true,
                'section' => 'pricing_options'
            ],
            [
                'id' => 'use_long_price',
                'label' => awe_lang('Tarification à long terme'),
                'desc' => awe_lang('Fixez un prix différent pour les longs séjours 7+, 14+, 30+'),
                'type' => 'on_off',
                'std' => 'off',
                'break' => true,
                'condition' => 'booking_type:is(per_night)',
                'section' => 'pricing_options'
            ],
            [
                'id' => 'price_7_day',
                'label' => awe_lang('Prix par 7+ jours'),
                'desc' => awe_lang("S'applique aux groupes de 7 à moins de 14 jours"),
                'type' => 'text',
                'layout' => 'col-12 col-md-6',
                'condition' => 'booking_type:is(per_night),use_long_price:is(on)',
                'section' => 'pricing_options'
            ],
            [
                'id' => 'price_14_day',
                'label' => awe_lang('Prix par 14+ jours'),
                'desc' => awe_lang("S'applique aux groupes de 14 à moins de 30 jours"),
                'type' => 'text',
                'layout' => 'col-12 col-md-6',
                'condition' => 'booking_type:is(per_night),use_long_price:is(on)',
                'section' => 'pricing_options'
            ],
            [
                'id' => 'price_30_day',
                'label' => awe_lang('Prix par 30+ jours'),
                'desc' => awe_lang("S'applique aux groupes de 30 jours et plus"),
                'type' => 'text',
                'layout' => 'col-12 col-md-6',
                'section' => 'pricing_options',
                'condition' => 'booking_type:is(per_night),use_long_price:is(on)',
                'break' => true,
            ],
            [
                'id' => 'weekend_price',
                'label' => awe_lang('Prix week-end'),
                'type' => 'text',
                'desc' => awe_lang("Laisser vide s'il en va de même avec le prix de base"),
                'layout' => 'col-12 col-md-6',
                'section' => 'pricing_options',
            ],
            [
                'id' => 'weekend_to_apply',
                'label' => awe_lang('Jours pour appliquer le week-end'),
                'type' => 'select',
                'choices' => [
                    'sun' => awe_lang('Sunday'),
                    'sat_sun' => awe_lang('Samedi Dimanche'),
                    'fri_sat_sun' => awe_lang('Vendredi Samedi Dimanche'),
                ],
                'std' => 'sun',
                'style' => 'wide',
                'layout' => 'col-12 col-md-6',
                'break' => true,
                'section' => 'pricing_options'
            ],
            [
                'id' => 'enable_extra_guest',
                'label' => awe_lang('Activer les invités supplémentaires'),
                'type' => 'on_off',
                'std' => 'off',
                'section' => 'pricing_options'
            ],
            [
                'id' => 'extra_guest_price',
                'label' => awe_lang('Prix invité supplémentaire (par personne)'),
                'desc' => awe_lang("Appliquer un prix supplémentaire pour le nombre d'invités"),
                'type' => 'text',
                'condition' => 'enable_extra_guest:is(on)',
                'layout' => 'col-12 col-md-6',
                'break' => true,
                'section' => 'pricing_options'
            ],
            [
                'id' => 'apply_to_guest',
                'label' => awe_lang('Pour chaque invité après'),
                'type' => 'number',
                'minlength' => 1,
                'std' => 1,
                'condition' => 'enable_extra_guest:is(on)',
                'layout' => 'col-12 col-md-6',
                'break' => true,
                'section' => 'pricing_options'
            ],
            [
                'id' => 'extra_services',
                'type' => 'list_item',
                'label' => awe_lang('Services supplémentaires'),
                'bind_from' => 'extra_services_name___',
                'items' => [
                    [
                        'id' => 'name',
                        'label' => awe_lang('Nom'),
                        'type' => 'text',
                        'translation' => true,
                        'layout' => 'col-12 col-md-6'
                    ],
                    [
                        'id' => 'name_unique',
                        'label' => awe_lang('Identifiant'),
                        'type' => 'unique',
                        'bind_from' => 'extra_services_name___',
                        'layout' => 'col-12 col-md-6'
                    ],
                    [
                        'id' => 'price',
                        'label' => awe_lang('Prix'),
                        'type' => 'text',
                        'layout' => 'col-12 col-md-6',
                    ],
                    [
                        'id' => 'required',
                        'label' => awe_lang('Obligatoire'),
                        'type' => 'on_off',
                        'layout' => 'col-12 col-md-6',
                        'break' => true
                    ],
                ],
                'layout' => 'col-12',
                'break' => true,
                'section' => 'pricing_options',
                'translation' => true,
            ],
            [
                'id' => 'custom_price',
                'label' => awe_lang('Prix / disponibilité personnalisés'),
                'desc' => awe_lang('Vous pouvez modifier le prix, la disponibilité par jour, par semaine, par mois, ..'),
                'type' => 'price',
                'post_type' => 'home',
                'section' => 'pricing_options'
            ],
            [
                'id' => 'amenities',
                'label' => awe_lang('Agréments'),
                'type' => 'checkbox',
                'choices' => 'terms:home-amenity',
                'field_type' => 'taxonomy',
                'style' => 'col',
                'section' => 'amenities_options'
            ],
            [
                'id' => 'gallery',
                'label' => awe_lang('Galerie'),
                'type' => 'media_advanced',
                'post_type' => 'home',
                'style' => [450, 320],
                'section' => 'gallery_options'
            ],
            [
                'id' => 'video',
                'label' => awe_lang('Vidéo'),
                'desc' => awe_lang('Youtube, Vimeo, ..'),
                'type' => 'text',
                'section' => 'gallery_options'
            ],
            [
                'id' => 'enable_cancellation',
                'label' => awe_lang("Activer l'annulation"),
                'type' => 'on_off',
                'section' => 'policies_options'
            ],
            [
                'id' => 'cancel_before',
                'label' => awe_lang('Annuler avant (jours)'),
                'type' => 'number',
                'minlength' => 0,
                'validation' => 'regex:^[0-9]{1,}$:m',
                'std' => 0,
                'condition' => 'enable_cancellation:is(on)',
                'section' => 'policies_options'
            ],
            [
                'id' => 'cancellation_detail',
                'label' => awe_lang("Détail de l'annulation"),
                'type' => 'textarea',
                'translation' => true,
                'condition' => 'enable_cancellation:is(on)',
                'section' => 'policies_options'
            ],
            [
                'id' => 'alert_per_hour',
                'label' => awe_lang('Note'),
                'desc' => awe_lang("Si vous utilisez la réservation horaire, l'enregistrement et le départ sont utilisés pour définir les heures disponibles"),
                'type' => 'alert',
                'style' => 'info',
                'condition' => 'booking_type:is(per_hour)',
                'section' => 'policies_options'
            ],
            [
                'id' => 'checkin_time',
                'type' => 'select',
                'label' => awe_lang('Enregistrement'),
                'choices' => list_hours(30),
                'layout' => 'col-12 col-md-6',
                'style' => 'wide',
                'section' => 'policies_options'
            ],
            [
                'id' => 'checkout_time',
                'type' => 'select',
                'label' => awe_lang('Check-out'),
                'choices' => list_hours(30),
                'layout' => 'col-12 col-md-6',
                'style' => 'wide',
                'break' => true,
                'section' => 'policies_options'
            ],
            [
                'id' => 'availability',
                'label' => awe_lang('Disponibilité'),
                'type' => 'availability',
                'excluded' => true,
                'post_type' => 'home',
                'break' => true,
                'section' => 'availability_options'
            ],
            [
                'id' => 'import_ical_url',
                'label' => awe_lang('Importer ton calendrier'),
                'type' => 'list_item',
                'bind_from' => 'import_ical_url_name___',
                'items' => [
                    [
                        'id' => 'name',
                        'label' => awe_lang('Chanel'),
                        'type' => 'select',
                        'choices' => [
                            'Google' => awe_lang('Google Agenda'),
                            'Airbnb' => awe_lang('Calendrier Airbnb'),
                            'HomeAway' => awe_lang('Calendrier à domicile'),
                            'Other' => awe_lang('Autre calendrier'),
                        ],
                        'translation' => 'no',
                        'layout' => 'col-12 col-md-6'
                    ],
                    [
                        'id' => 'ical_url',
                        'label' => awe_lang('URL Ical'),
                        'type' => 'text',
                        'layout' => 'col-12 col-md-6'
                    ],
                ],
                'section' => 'availability_options'
            ],
            [
                'id' => 'ical_alert',
                'label' => awe_lang('Recommander'),
                'desc' => awe_lang("Pour utiliser Ical Sync, vous devez configurer cron-job sur votre serveur."),
                'type' => 'alert',
                'style' => 'info',
                'section' => 'availability_options'
            ],
            [
                'id' => 'export_ical_url',
                'label' => awe_lang('Exporter Ical'),
                'type' => 'ical',
                'post_type' => 'home',
                'section' => 'availability_options'
            ],
        ]
    ],
    'experience_settings' => [
        'sections' => [
            [
                'id' => 'detail_options',
                'label' => awe_lang('Détails'),
            ],
            [
                'id' => 'location_options',
                'label' => awe_lang('Position'),
            ],
            [
                'id' => 'pricing_options',
                'label' => awe_lang('Prix'),
            ],
            [
                'id' => 'gallery_options',
                'label' => awe_lang('Galerie'),
                'translation' => false
            ],
            [
                'id' => 'languages_options',
                'label' => awe_lang('Langues'),
            ],
            [
                'id' => 'inclusions_options',
                'label' => awe_lang('Inclusions / exclusions'),
            ],
            [
                'id' => 'itinerary_options',
                'label' => awe_lang('Itinéraire'),
            ],
            [
                'id' => 'policies_options',
                'label' => awe_lang('Stratégies'),
            ],
            [
                'id' => 'availability_options',
                'label' => awe_lang('Disponibilité'),
                'translation' => false
            ],
        ],
        'fields' => [
            [
                'id' => 'post_title',
                'label' => awe_lang('Titre'),
                'type' => 'text',
                'desc' => awe_lang('Entrez un minimum de 6 caractères'),
                'validation' => 'required:|min:6:m',
                'translation' => true,
                'section' => 'detail_options'
            ],
            [
                'id' => 'post_slug',
                'label' => awe_lang('Slug'),
                'type' => 'permalink',
                'post_type' => 'experience',
                'section' => 'detail_options'
            ],
            [
                'id' => 'post_content',
                'label' => awe_lang('Détails'),
                'type' => 'editor',
                'translation' => true,
                'section' => 'detail_options'
            ],
            [
                'id' => 'post_description',
                'label' => awe_lang('Description'),
                'type' => 'textarea',
                'translation' => true,
                'section' => 'detail_options'
            ],
            [
                'id' => 'is_featured',
                'label' => awe_lang('Est-elle en vedette?'),
                'type' => 'on_off',
                'permission' => ['administrator'],
                'section' => 'detail_options'
            ],
            [
                'id' => 'booking_form',
                'label' => awe_lang('Formulaire de reservation'),
                'type' => 'select',
                'choices' => [
                    'instant' => awe_lang('Instant'),
                    'enquiry' => awe_lang('Enquiry'),
                    'instant_enquiry' => awe_lang('Instant & Enquiry')
                ],
                'std' => 'instant',
                'layout' => 'col-12 col-md-6',
                'section' => 'detail_options'
            ],
            [
                'id' => 'experience_type',
                'label' => awe_lang('Experience Type'),
                'type' => 'select',
                'choices' => 'terms:experience-type',
                'field_type' => 'taxonomy',
                'layout' => 'col-12 col-md-6',
                'break' => true,
                'style' => 'wide',
                'section' => 'detail_options'
            ],
            [
                'id' => 'durations',
                'label' => awe_lang('Durations'),
                'desc' => awe_lang('Example: 2 days 1 night, 3 hours'),
                'type' => 'text',
                'translation' => true,
                'layout' => 'col-12 col-md-6',
                'section' => 'detail_options'
            ],
            [
                'id' => 'number_of_guest',
                'label' => awe_lang('Max People'),
                'type' => 'number',
                'desc' => awe_lang('-1: Unlimited. Can change in Custom Price option.'),
                'minlength' => 1,
                'std' => 1,
                'validation' => 'required|regex:^[0-9]{1,}$:m',
                'layout' => 'col-12 col-md-6',
                'section' => 'detail_options'
            ],
            [
                'id' => 'location',
                'label' => awe_lang('Location Settings'),
                'type' => 'location',
                'field_type' => 'location',
                'section' => 'location_options',
                'translation' => true
            ],
            [
                'id' => 'booking_type',
                'label' => awe_lang('Booking Type'),
                'type' => 'select',
                'choices' => [
                    'date_time' => awe_lang('Date & time'),
                    'just_date' => awe_lang('Just Date, no time'),
                    'package' => awe_lang('Package'),
                ],
                'std' => 'date_time',
                'style' => 'wide',
                'layout' => 'col-12 col-md-3',
                'break' => true,
                'section' => 'pricing_options'
            ],
            [
                'id' => 'base_price',
                'label' => awe_lang('Base Price'),
                'type' => 'text',
                'layout' => 'col-12 col-md-3',
                'break' => true,
                'condition' => 'booking_type:is(package)',
                'section' => 'pricing_options'
            ],
            [
                'id' => 'price_categories',
                'label' => awe_lang('Price Categories'),
                'type' => 'price_categories',
                'condition' => 'booking_type:not(package)',
                'section' => 'pricing_options'
            ],
            [
                'id' => 'tour_packages',
                'label' => awe_lang('List Packages'),
                'type' => 'list_item',
                'bind_from' => 'tour_packages_title__',
                'items' => [
                    [
                        'id' => 'title',
                        'label' => awe_lang('Title'),
                        'type' => 'text',
                        'translation' => true,
                        'layout' => 'col-12 col-md-6',
                    ],
                    [
                        'id' => 'name',
                        'label' => awe_lang('Name'),
                        'type' => 'unique_id',
                        'break' => true,
                        'layout' => 'col-12 col-md-6',
                    ],
                    [
                        'id' => 'price',
                        'label' => awe_lang('Price'),
                        'type' => 'text',
                        'break' => true,
                        'layout' => 'col-12 col-md-6',
                    ],
                    [
                        'id' => 'sale_price',
                        'label' => awe_lang('Sale Price'),
                        'type' => 'text',
                        'break' => true,
                        'layout' => 'col-12 col-md-6',
                    ],
                    [
                        'id' => 'num_adult',
                        'label' => awe_lang('No. Adults'),
                        'type' => 'number',
                        'min_length' => 0,
                        'break' => true,
                        'layout' => 'col-12 col-md-6',
                    ],
                    [
                        'id' => 'num_child',
                        'label' => awe_lang('No. Children'),
                        'type' => 'number',
                        'min_length' => 0,
                        'break' => true,
                        'layout' => 'col-12 col-md-6',
                    ],
                    [
                        'id' => 'num_infant',
                        'label' => awe_lang('No. Infants'),
                        'type' => 'number',
                        'min_length' => 0,
                        'break' => true,
                        'layout' => 'col-12 col-md-6',
                    ],
                    [
                        'id' => 'detail',
                        'label' => awe_lang('Detail'),
                        'type' => 'textarea',
                        'translation' => true,
                        'layout' => 'col-12 col-md-6',
                    ],
                ],
                'break' => true,
                'translation' => true,
                'section' => 'pricing_options',
            ],
            [
                'id' => 'extra_services',
                'type' => 'list_item',
                'label' => awe_lang('Extra Services'),
                'bind_from' => 'extra_services_name___',
                'items' => [
                    [
                        'id' => 'name',
                        'label' => awe_lang('Name'),
                        'type' => 'text',
                        'translation' => true,
                        'layout' => 'col-12 col-md-6'
                    ],
                    [
                        'id' => 'name_unique',
                        'label' => awe_lang('ID'),
                        'type' => 'unique',
                        'bind_from' => 'extra_services_name___',
                        'layout' => 'col-12 col-md-6'
                    ],
                    [
                        'id' => 'price',
                        'label' => awe_lang('Price'),
                        'type' => 'text',
                        'layout' => 'col-12 col-md-6',
                    ],
                    [
                        'id' => 'required',
                        'label' => awe_lang('Required'),
                        'type' => 'on_off',
                        'layout' => 'col-12 col-md-6',
                        'break' => true
                    ],
                ],
                'layout' => 'col-12',
                'break' => true,
                'section' => 'pricing_options',
                'translation' => true,
            ],
            [
                'id' => 'custom_price',
                'label' => awe_lang('Custom Price / Availability'),
                'desc' => awe_lang('You can change price, availability, max of people'),
                'type' => 'price',
                'post_type' => 'experience',
                'section' => 'pricing_options'
            ],
            [
                'id' => 'gallery',
                'label' => awe_lang('Gallery'),
                'type' => 'media_advanced',
                'desc' => awe_lang('Choose at least 5 photos'),
                'post_type' => 'experience',
                'style' => [400, 500],
                'section' => 'gallery_options'
            ],
            [
                'id' => 'video',
                'label' => awe_lang('Video'),
                'desc' => awe_lang('Youtube, Vimeo, ...'),
                'type' => 'text',
                'section' => 'gallery_options'
            ],
            [
                'id' => 'languages',
                'label' => awe_lang('Languages'),
                'type' => 'checkbox',
                'choices' => 'terms:experience-languages',
                'field_type' => 'taxonomy',
                'style' => 'col',
                'section' => 'languages_options'
            ],
            [
                'id' => 'inclusions',
                'label' => awe_lang('Inclusions'),
                'type' => 'checkbox',
                'choices' => 'terms:experience-inclusions',
                'field_type' => 'taxonomy',
                'style' => 'col',
                'section' => 'inclusions_options'
            ],
            [
                'id' => 'exclusions',
                'label' => awe_lang('Exclusions'),
                'type' => 'checkbox',
                'choices' => 'terms:experience-exclusions',
                'field_type' => 'taxonomy',
                'style' => 'col',
                'section' => 'inclusions_options'
            ],
            [
                'id' => 'itinerary',
                'label' => awe_lang('Itinerary'),
                'type' => 'list_item',
                'bind_from' => 'itinerary_title___',
                'items' => [
                    [
                        'id' => 'sub_title',
                        'label' => awe_lang('Sub Title'),
                        'type' => 'text',
                        'translation' => true,
                        'layout' => 'col-12 col-md-6'
                    ],
                    [
                        'id' => 'title',
                        'label' => awe_lang('Title'),
                        'type' => 'text',
                        'translation' => true,
                        'layout' => 'col-12 col-md-6'
                    ],
                    [
                        'id' => 'description',
                        'label' => awe_lang('Description'),
                        'type' => 'editor',
                        'translation' => true
                    ],
                    [
                        'id' => 'image',
                        'label' => awe_lang('Photo'),
                        'type' => 'upload',
                        'translation' => false
                    ],
                ],
                'layout' => 'col-12 col-lg-8',
                'break' => true,
                'section' => 'itinerary_options',
                'translation' => true,
            ],
            [
                'id' => 'enable_cancellation',
                'label' => awe_lang('Enable Cancellation'),
                'type' => 'on_off',
                'section' => 'policies_options'
            ],
            [
                'id' => 'cancel_before',
                'label' => awe_lang('Cancel Before (days)'),
                'type' => 'number',
                'minlength' => 0,
                'validation' => 'regex:^[0-9]{1,}$:m',
                'std' => 0,
                'condition' => 'enable_cancellation:is(on)',
                'section' => 'policies_options'
            ],
            [
                'id' => 'cancellation_detail',
                'label' => awe_lang('Cancellation Detail'),
                'type' => 'textarea',
                'translation' => true,
                'condition' => 'enable_cancellation:is(on)',
                'section' => 'policies_options'
            ],
            [
                'id' => 'availability',
                'label' => awe_lang('Availability'),
                'desc' => awe_lang('Show reservation history on calendar'),
                'type' => 'availability',
                'post_type' => 'experience',
                'excluded' => true,
                'section' => 'availability_options'
            ],
            [
                'id' => 'import_ical_url',
                'label' => awe_lang('Ical Sync'),
                'type' => 'list_item',
                'bind_from' => 'import_ical_url_name___',
                'items' => [
                    [
                        'id' => 'name',
                        'label' => awe_lang('Chanel'),
                        'type' => 'select',
                        'choices' => [
                            'Google' => awe_lang('Google Calendar'),
                            'Airbnb' => awe_lang('Airbnb Calendar'),
                            'HomeAway' => awe_lang('HomeAway Calendar'),
                            'Other' => awe_lang('Other Calendar'),
                        ],
                        'translation' => 'no',
                        'layout' => 'col-12 col-md-6'
                    ],
                    [
                        'id' => 'ical_url',
                        'label' => awe_lang('Ical URL'),
                        'type' => 'text',
                        'layout' => 'col-12 col-md-6'
                    ],
                ],
                'section' => 'availability_options'
            ],
            [
                'id' => 'ical_alert',
                'label' => awe_lang('Recommend'),
                'desc' => awe_lang('To use Ical Sync, you need to setup cron-job on your server.'),
                'type' => 'alert',
                'style' => 'info',
                'section' => 'availability_options'
            ],
            [
                'id' => 'export_ical_url',
                'label' => awe_lang('Export Ical'),
                'type' => 'ical',
                'post_type' => 'experience',
                'section' => 'availability_options'
            ],
        ]
    ],
    'car_settings' => [
        'sections' => [
            [
                'id' => 'detail_options',
                'label' => awe_lang(' Information voiture'),
            ],
            [
                'id' => 'location_options',
                'label' => awe_lang('Adresse et ville'),
            ],
            [
                'id' => 'pricing_options',
                'label' => awe_lang('Prix'),
                'translation' => false
            ],
            [
                'id' => 'extra_options',
                'label' => awe_lang('Agréments'),
            ],
            [
                'id' => 'gallery_options',
                'label' => awe_lang('Galerie'),
                'translation' => false
            ],
            [
                'id' => 'attribute_options',
                'label' => awe_lang('Galerie'),
            ],
            [
                'id' => 'policies_options',
                'label' => awe_lang('Stratégies'),
            ],
            [
                'id' => 'availability_options',
                'label' => awe_lang('Disponibilité'),
                'translation' => false
            ],
        ],
        'fields' => [
            [
                'id' => 'post_title',
                'label' => awe_lang('Titre de la voiture '),
                'type' => 'text',
                'desc' => awe_lang('Entrez un minimum de 6 caractères'),
                'validation' => 'required:|min:6:m',
                'translation' => true,
                'section' => 'detail_options'
            ],
            [
                'id' => 'post_slug',
                'label' => awe_lang('Permalien (Slug)'),
                'type' => 'permalink',
                'post_type' => 'car',
                'section' => 'detail_options'
            ],
            [
                'id' => 'post_content',
                'label' => awe_lang('Description générales '),
                'type' => 'editor',
                'translation' => true,
                'section' => 'detail_options'
            ],
            [
                'id' => 'post_description',
                'label' => awe_lang('Information supplementaires'),
                'type' => 'textarea',
                'translation' => true,
                'section' => 'detail_options'
            ],
            [
                'id' => 'is_featured',
                'label' => awe_lang('En vedette ( A la une ?'),
                'type' => 'on_off',
                'permission' => ['administrator'],
                'layout' => 'col-12 col-md-6',
                'section' => 'detail_options'
            ],
            [
                'id' => 'car_type',
                'label' => awe_lang('Type de voiture'),
                'type' => 'select',
                'choices' => 'terms:car-type',
                'field_type' => 'taxonomy',
                'layout' => 'col-12 col-md-6',
                'break' => true,
                'style' => 'wide',
                'section' => 'detail_options'
            ],
            [
                'id' => 'booking_form',
                'label' => awe_lang('Réservation pour'),
                'type' => 'select',
                'choices' => [
                    'instant' => awe_lang('Maintenant'),
                    'enquiry' => awe_lang('Enquête'),
                    'instant_enquiry' => awe_lang('Maintenant et Enquête')
                ],
                'std' => 'instant',
                'layout' => 'col-12 col-md-6',
                'section' => 'detail_options'
            ],
            [
                'id' => 'quantity',
                'label' => awe_lang('Quantité'),
                'type' => 'number',
                'minlength' => 1,
                'std' => 1,
                'desc' => awe_lang('Laisser vide pour illimité'),
                'layout' => 'col-12 col-md-6',
                'section' => 'detail_options'
            ],
            [
                'id' => 'location',
                'label' => awe_lang('Les paramètres de localisation'),
                'type' => 'location',
                'field_type' => 'location',
                'section' => 'location_options',
                'translation' => true
            ],
            [
                'id' => 'base_price',
                'label' => awe_lang('Prix de base'),
                'type' => 'text',
                'validation' => 'required',
                'layout' => 'col-12 col-md-6',
                'std' => 0,
                'section' => 'pricing_options',
                'break' => true,
            ],
            [
                'id' => 'discount_by_day',
                'label' => awe_lang('Remise par nombre de jours'),
                'type' => 'list_item',
                'bind_from' => 'discount_by_day_name___',
                'condition' => 'settings:car_booking_type:day',
                'items' => [
                    [
                        'id' => 'name',
                        'label' => awe_lang('Nom'),
                        'type' => 'text',
                        'translation' => true,
                    ],
                    [
                        'id' => 'from',
                        'label' => awe_lang('De'),
                        'type' => 'text',
                    ],
                    [
                        'id' => 'to',
                        'label' => awe_lang('À'),
                        'type' => 'text',
                    ],
                    [
                        'id' => 'price',
                        'label' => awe_lang('Prix'),
                        'type' => 'text',
                    ]
                ],
                'layout' => 'col-12 col-md-6',
                'break' => true,
                'section' => 'pricing_options',
                'translation' => true
            ],
            [
                'id' => 'custom_price',
                'label' => awe_lang('Prix / disponibilité personnalisés'),
                'desc' => awe_lang('Vous pouvez changer le prix, la disponibilité'),
                'type' => 'price',
                'post_type' => 'car',
                'section' => 'pricing_options'
            ],
            [
                'id' => 'passenger',
                'label' => awe_lang('Passager'),
                'type' => 'number',
                'minlength' => 1,
                'std' => 1,
                'validation' => 'required|regex:^[0-9]{1,}$:m',
                'layout' => 'col-12 col-md-6',
                'section' => 'extra_options'
            ],
            [
                'id' => 'gear_shift',
                'label' => awe_lang('Changement de vitesse'),
                'type' => 'text',
                'translation' => true,
                'validation' => 'required',
                'layout' => 'col-12 col-md-6',
                'section' => 'extra_options'
            ],
            [
                'id' => 'baggage',
                'label' => awe_lang('bagages'),
                'type' => 'number',
                'minlength' => 1,
                'std' => 1,
                'validation' => 'required|regex:^[0-9]{1,}$:m',
                'layout' => 'col-12 col-md-6',
                'section' => 'extra_options'
            ],
            [
                'id' => 'door',
                'label' => awe_lang('Porte'),
                'type' => 'number',
                'minlength' => 1,
                'std' => 4,
                'validation' => 'required|regex:^[0-9]{1,}$:m',
                'layout' => 'col-12 col-md-6',
                'section' => 'extra_options'
            ],
            [
                'id' => 'gallery',
                'label' => awe_lang('Galerie'),
                'type' => 'media_advanced',
                'post_type' => 'car',
                'style' => [450, 320],
                'section' => 'gallery_options',
            ],
            [
                'id' => 'video',
                'label' => awe_lang('Video'),
                'type' => 'text',
                'desc' => awe_lang('Youtube, Vimeo, ...'),
                'layout' => 'col-12',
                'section' => 'gallery_options',
            ],
            [
                'id' => 'insurance_plan',
                'label' => awe_lang('Plans d\'assurance'),
                'type' => 'list_item',
                'bind_from' => 'insurance_plan_name___',
                'layout' => 'col-12 col-md-6',
                'items' => [
                    [
                        'id' => 'name',
                        'label' => awe_lang('Nom'),
                        'type' => 'text',
                        'translation' => true,
                        'layout' => 'col-12 col-md-6'
                    ],
                    [
                        'id' => 'name_unique',
                        'label' => awe_lang('Code'),
                        'type' => 'unique',
                        'bind_from' => 'insurance_plan_name___',
                        'layout' => 'col-12 col-md-6'
                    ],
                    [
                        'id' => 'description',
                        'label' => awe_lang('La description'),
                        'type' => 'textarea',
                        'rows' => '3'
                    ],
                    [
                        'id' => 'price',
                        'label' => awe_lang('Prix'),
                        'type' => 'text',
                    ],
                    [
                        'id' => 'fixed',
                        'label' => awe_lang('Prix fixe'),
                        'std' => 'off',
                        'type' => 'on_off',
                    ]
                ],
                'break' => true,
                'section' => 'attribute_options',
                'translation' => true
            ],
            [
                'id' => 'features',
                'label' => awe_lang('Caractéristiques de la voiture'),
                'type' => 'checkbox',
                'choices' => 'terms:car-feature',
                'field_type' => 'taxonomy',
                'style' => 'col',
                'section' => 'attribute_options'
            ],
            [
                'id' => 'equipments',
                'label' => awe_lang('Équipements'),
                'type' => 'term_price',
                'choices' => 'car-equipment',
                'field_type' => 'term_price',
                'style' => 'col',
                'section' => 'attribute_options'
            ],
            [
                'id' => 'enable_cancellation',
                'label' => awe_lang('Activer l\'annulation'),
                'type' => 'on_off',
                'section' => 'policies_options'
            ],
            [
                'id' => 'cancel_before',
                'label' => awe_lang('Annuler avant (jours)'),
                'type' => 'number',
                'minlength' => 0,
                'validation' => 'required|numeric',
                'std' => 0,
                'condition' => 'enable_cancellation:is(on)',
                'section' => 'policies_options'
            ],
            [
                'id' => 'cancellation_detail',
                'label' => awe_lang('Détail de l\'annulation'),
                'type' => 'textarea',
                'translation' => true,
                'condition' => 'enable_cancellation:is(on)',
                'section' => 'policies_options'
            ],
            [
                'id' => 'availability',
                'label' => awe_lang('Disponibilité'),
                'desc' => awe_lang('Afficher l\'historique des réservations sur le calendrier'),
                'type' => 'availability',
                'excluded' => true,
                'post_type' => 'car',
                'section' => 'availability_options'
            ]
        ]
    ],
    'page_settings' => [
        'content' => [
            'fields' => [
                [
                    'id' => 'post_title',
                    'label' => awe_lang('Title'),
                    'type' => 'text',
                    'translation' => true,
                    'desc' => awe_lang('The title is required field'),
                    'validation' => 'required'
                ],
                [
                    'id' => 'post_slug',
                    'label' => awe_lang('Permalink'),
                    'type' => 'permalink',
                    'post_type' => 'page'
                ],
                [
                    'id' => 'post_content',
                    'label' => awe_lang('Detail'),
                    'type' => 'editor',
                    'translation' => true,
                ]
            ]
        ],
        'sidebar' => [
            'fields' => [
                [
                    'id' => 'thumbnail_id',
                    'label' => awe_lang('Featured Image'),
                    'type' => 'upload',
                    'translation' => false
                ]
            ]
        ]
    ],
    'post_settings' => [
        'content' => [
            'fields' => [
                [
                    'id' => 'post_title',
                    'label' => awe_lang('Title'),
                    'type' => 'text',
                    'translation' => true,
                    'desc' => awe_lang('The title is required field'),
                    'validation' => 'required'
                ],
                [
                    'id' => 'post_slug',
                    'label' => awe_lang('Permalink'),
                    'type' => 'permalink',
                    'post_type' => 'post'
                ],
                [
                    'id' => 'post_content',
                    'label' => awe_lang('Detail'),
                    'type' => 'editor',
                    'translation' => true,
                ],
                [
                    'id' => 'author',
                    'label' => awe_lang('Author'),
                    'type' => 'select',
                    'choices' => 'user:administrator:0',
                ]
            ]
        ],
        'sidebar' => [
            'fields' => [
                [
                    'id' => 'post_category',
                    'label' => awe_lang('Category'),
                    'type' => 'checkbox',
                    'choices' => 'terms:post-category'
                ],
                [
                    'id' => 'post_tag',
                    'label' => awe_lang('Tags'),
                    'type' => 'tag',
                    'choices' => 'terms:post-tag'
                ],
                [
                    'id' => 'thumbnail_id',
                    'label' => awe_lang('Featured Image'),
                    'type' => 'upload',
                    'translation' => false
                ]
            ]
        ]
    ],
    'theme_options' => [
        'sections' => [
            [
                'id' => 'general_options',
                'label' => awe_lang('General'),
            ],
            [
                'id' => 'styling_options',
                'label' => awe_lang('Styling'),
                'translation' => false
            ],
            [
                'id' => 'page_options',
                'label' => awe_lang('Page'),
            ],
            [
                'id' => 'booking_options',
                'label' => awe_lang('Booking'),
            ],
            [
                'id' => 'service_options',
                'label' => awe_lang('Services')
            ],
            [
                'id' => 'payment_options',
                'label' => awe_lang('Payment Gateways'),
            ],
            [
                'id' => 'review_options',
                'label' => awe_lang('Reviews'),
                'translation' => false,
            ],
            [
                'id' => 'email_options',
                'label' => awe_lang('Email'),
            ],
            [
                'id' => 'partner_options',
                'label' => awe_lang('Partner'),
                'translation' => false,
            ],
            [
                'id' => 'registration',
                'label' => awe_lang('Registration'),
                'translation' => false
            ],
            [
                'id' => 'footer_options',
                'label' => awe_lang('Footer'),
            ],
            [
                'id' => 'ical_options',
                'label' => awe_lang('Ical Sync'),
            ],
            [
                'id' => 'advance_options',
                'label' => awe_lang('Advanced'),
            ],
            [
                'id' => 'affiliate_options',
                'label' => awe_lang('Affiliates'),
                'auto_hide' => true
            ],
        ],
        'fields' => [
            [
                'id' => 'site_name',
                'label' => awe_lang('Site Name'),
                'type' => 'text',
                'layout' => 'col-12 col-md-6',
                'std' => 'AweBooking',
                'break' => true,
                'translation' => true,
                'section' => 'general_options'
            ],
            [
                'id' => 'site_description',
                'label' => awe_lang('Site Description'),
                'type' => 'text',
                'translation' => true,
                'layout' => 'col-12 col-md-6',
                'std' => 'Travel Booking System',
                'break' => true,
                'section' => 'general_options'
            ],
            [
                'id' => 'logo',
                'label' => awe_lang('Logo'),
                'type' => 'upload',
                'section' => 'general_options',
                'translation' => false
            ],
            [
                'id' => 'dashboard_logo',
                'label' => awe_lang('Dashboard Logo'),
                'type' => 'upload',
                'layout' => 'col-12 col-md-4',
                'section' => 'general_options',
                'translation' => false
            ],
            [
                'id' => 'dashboard_logo_short',
                'label' => awe_lang('Dashboard Small Logo'),
                'type' => 'upload',
                'layout' => 'col-12 col-md-4',
                'break' => true,
                'translation' => false,
                'section' => 'general_options'
            ],
            [
                'id' => 'favicon',
                'label' => awe_lang('Favicon'),
                'type' => 'upload',
                'section' => 'general_options',
                'translation' => false,
                'break' => true,
            ],
            [
                'id' => 'enable_sticky',
                'label' => awe_lang('Sticky Header'),
                'type' => 'on_off',
                'std' => 'off',
                'break' => true,
                'section' => 'styling_options'
            ],
            [
                'id' => 'main_color',
                'label' => awe_lang('Main Color'),
                'type' => 'colorpicker',
                'std' => '#f8546d',
                'layout' => 'col-12 col-sm-6 col-md-3',
                'break' => true,
                'section' => 'styling_options'
            ],
            [
                'id' => 'google_font',
                'label' => awe_lang("Google Font"),
                'type' => 'google_font',
                'style' => 'wide',
                'section' => 'styling_options'
            ],
            [
                'id' => 'custom_css',
                'label' => awe_lang('Custom CSS'),
                'type' => 'css',
                'section' => 'styling_options',
            ],
            [
                'id' => 'custom_header_code',
                'label' => awe_lang('Header Code'),
                'desc' => awe_lang('You can add some custom code: js, css. Note: Make sure your code is clean'),
                'type' => 'textarea',
                'section' => 'styling_options',
            ],
            [
                'id' => 'custom_footer_code',
                'label' => awe_lang('Footer Code'),
                'desc' => awe_lang('You can add some custom code: js, css. Note: Make sure your code is clean'),
                'type' => 'textarea',
                'section' => 'styling_options',
            ],
            [
                'id' => 'home_slider',
                'label' => awe_lang('Home Slider'),
                'type' => 'uploads',
                'section' => 'page_options'
            ],
            [
                'id' => 'top_destination',
                'label' => awe_lang('Top Destination'),
                'type' => 'list_item',
                'bind_from' => 'top_destination_name___',
                'items' => [
                    [
                        'id' => 'name',
                        'label' => awe_lang('Destination Name'),
                        'type' => 'text',
                        'translation' => true,
                    ],
                    [
                        'id' => 'lat',
                        'label' => awe_lang('Destination Lat'),
                        'type' => 'text',
                    ],
                    [
                        'id' => 'lng',
                        'label' => awe_lang('Destination Lng'),
                        'type' => 'text',
                    ],
                    [
                        'id' => 'image',
                        'label' => awe_lang('Image'),
                        'type' => 'upload',
                    ],
                    [
                        'id' => 'service',
                        'label' => awe_lang('Service'),
                        'type' => 'checkbox_pro',
                        'choices' => [
                            'home' => awe_lang('Home'),
                            'experience' => awe_lang('Experience'),
                            'car' => awe_lang('Car')
                        ],
                        'style' => 'col',
                    ]
                ],
                'layout' => 'col-12 col-md-6',
                'break' => true,
                'section' => 'page_options',
                'translation' => true
            ],
            [
                'id' => 'testimonial',
                'label' => awe_lang('Testimonial'),
                'type' => 'list_item',
                'bind_from' => 'testimonial_author_name___',
                'items' => [
                    [
                        'id' => 'author_name',
                        'label' => awe_lang('Author Name'),
                        'type' => 'text',
                        'translation' => true,
                    ],
                    [
                        'id' => 'author_avatar',
                        'label' => awe_lang('Avatar'),
                        'type' => 'upload',
                    ],
                    [
                        'id' => 'author_comment',
                        'label' => awe_lang('Comment'),
                        'type' => 'textarea',
                        'translation' => true
                    ],
                    [
                        'id' => 'author_rate',
                        'label' => awe_lang('Rate'),
                        'type' => 'range',
                        'minlength' => 1,
                        'maxlength' => [
                            'max-length' => 5
                        ],
                        'std' => 5
                    ],
                    [
                        'id' => 'date',
                        'label' => awe_lang('Created At'),
                        'type' => 'datepicker',
                        'min_date' => -1
                    ]
                ],
                'enqueue_scripts' => ['flatpickr-js', 'range-slider'],
                'enqueue_styles' => ['flatpickr-css', 'range-slider'],
                'layout' => 'col-12 col-md-6',
                'break' => true,
                'section' => 'page_options',
                'translation' => true
            ],
            [
                'id' => 'testimonial_background',
                'label' => awe_lang('Testimonial Background'),
                'type' => 'colorpicker',
                'std' => '#dd556a',
                'layout' => 'col-12 col-md-3',
                'break' => true,
                'section' => 'page_options',
            ],
            [
                'id' => 'term_condition_page',
                'label' => awe_lang('Term & Condition Page'),
                'type' => 'select',
                'choices' => 'page',
                'layout' => 'col-12 col-12 col-md-6',
                'style' => 'wide',
                'break' => true,
                'section' => 'page_options'
            ],
            [
                'id' => 'call_to_action_background',
                'label' => awe_lang('Call To Action Background'),
                'type' => 'upload',
                'section' => 'page_options',
                'translation' => false
            ],
            [
                'id' => 'call_to_action_page',
                'label' => awe_lang('Call To Action Page'),
                'type' => 'select',
                'choices' => 'page',
                'layout' => 'col-12 col-sm-6',
                'style' => 'wide',
                'break' => true,
                'section' => 'page_options'
            ],
            [
                'id' => 'blog_image',
                'label' => awe_lang('Blog page image'),
                'type' => 'upload',
                'section' => 'page_options',
                'translation' => false
            ],
            [
                'id' => 'sidebar_image',
                'label' => awe_lang('Sidebar image'),
                'type' => 'upload',
                'section' => 'page_options',
                'translation' => false
            ],
            [
                'id' => 'sidebar_image_link',
                'label' => awe_lang('Sidebar image link'),
                'type' => 'text',
                'section' => 'page_options',
                'layout' => 'col-12 col-md-6',
                'break' => true,
            ],
            [
                'id' => 'contact_detail',
                'label' => awe_lang('Contact Detail'),
                'type' => 'editor',
                'translation' => true,
                'layout' => 'col-12 col-md-6',
                'break' => true,
                'section' => 'page_options',
            ],
            [
                'id' => 'contact_map_lat',
                'label' => awe_lang('Contact Us: Map latitude'),
                'type' => 'text',
                'layout' => 'col-12 col-md-3',
                'section' => 'page_options',
            ],
            [
                'id' => 'contact_map_lng',
                'label' => awe_lang('Contact Us: Map longtitude'),
                'type' => 'text',
                'layout' => 'col-12 col-md-3',
                'break' => true,
                'section' => 'page_options',
            ],
            [
                'id' => 'currencies',
                'type' => 'list_item',
                'label' => awe_lang('Currencies'),
                'bind_from' => 'currencies_name___',
                'translation' => true,
                'items' => [
                    [
                        'id' => 'name',
                        'label' => awe_lang('Name'),
                        'type' => 'text',
                        'layout' => 'col-12 col-md-6',
                        'translation' => true
                    ],
                    [
                        'id' => 'symbol',
                        'label' => awe_lang('Symbol'),
                        'type' => 'text',
                        'layout' => 'col-12 col-md-6',
                        'break' => true,
                    ],
                    [
                        'id' => 'unit',
                        'label' => awe_lang('Unit'),
                        'type' => 'select',
                        'choices' => default_currencies(),
                        'style' => 'wide',
                        'layout' => 'col-12 col-sm-4',
                    ],
                    [
                        'id' => 'exchange',
                        'label' => awe_lang('Exchange Rate'),
                        'type' => 'text',
                        'std' => 1,
                        'layout' => 'col-12 col-sm-4',
                    ],
                    [
                        'id' => 'position',
                        'label' => awe_lang('Position'),
                        'type' => 'select',
                        'choices' => [
                            'left' => awe_lang('Left ($99)'),
                            'right' => awe_lang('Right (99$)'),
                        ],
                        'style' => 'wide',
                        'std' => 'left',
                        'layout' => 'col-12 col-sm-4',
                        'break' => true,
                    ],
                    [
                        'id' => 'thousand_separator',
                        'label' => awe_lang('Thousand Separator'),
                        'type' => 'text',
                        'std' => ',',
                        'layout' => 'col-12 col-sm-4',
                    ],
                    [
                        'id' => 'decimal_separator',
                        'label' => awe_lang('Decimal Separator'),
                        'type' => 'text',
                        'std' => '.',
                        'layout' => 'col-12 col-sm-4',
                    ],
                    [
                        'id' => 'currency_decimal',
                        'label' => awe_lang('Currency Decimal'),
                        'type' => 'number',
                        'minlength' => 0,
                        'std' => 0,
                        'layout' => 'col-12 col-sm-4',
                    ],
                ],
                'std' => [
                    [
                        'name' => 'USD',
                        'symbol' => '$',
                        'unit' => 'USD',
                        'exchange' => 1,
                        'position' => 'left',
                        'thousand_separator' => ',',
                        'decimal_separator' => '.',
                        'currency_decimal' => 2
                    ]
                ],
                'layout' => 'col-12 col-md-6',
                'break' => true,
                'section' => 'booking_options'
            ],
            [
                'id' => 'primary_currency',
                'label' => awe_lang('Primary Currency'),
                'type' => 'select',
                'choices' => 'hh_currencies',
                'std' => 'USD',
                'layout' => 'col-12 col-md-6',
                'style' => 'wide',
                'break' => true,
                'section' => 'booking_options'
            ],
            [
                'id' => 'included_tax',
                'label' => awe_lang('Tax is included?'),
                'type' => 'on_off',
                'section' => 'booking_options'
            ],
            [
                'id' => 'tax',
                'label' => awe_lang('Tax (%)'),
                'type' => 'text',
                'std' => '10',
                'layout' => 'col-12 col-md-6',
                'section' => 'booking_options',
            ],
            [
                'id' => 'service_tabs',
                'label' => awe_lang('Service Tabs'),
                'type' => 'tab',
                'tab_title' => [
                    [
                        'id' => 'home_tab',
                        'label' => awe_lang('Home'),
                    ],
                    [
                        'id' => 'experience_tab',
                        'label' => awe_lang('Experience'),
                    ],
                    [
                        'id' => 'car_tab',
                        'label' => awe_lang('Car'),
                    ],
                ],
                'tab_content' => [
                    [
                        'id' => 'enable_home',
                        'label' => awe_lang('Service Enable'),
                        'type' => 'on_off',
                        'std' => 'on',
                        'section' => 'home_tab'
                    ],
                    [
                        'id' => 'home_featured_image',
                        'label' => awe_lang('Featured Image'),
                        'type' => 'upload',
                        'section' => 'home_tab',
                        'translation' => false,
                        'condition' => 'enable_home:is(on)',
                    ],
                    [
                        'id' => 'home_search_radius',
                        'label' => awe_lang('Search Radius'),
                        'desc' => awe_lang('Search radius to find home by lat/lng'),
                        'type' => 'range',
                        'layout' => 'col-12 col-md-6',
                        'break' => true,
                        'section' => 'home_tab',
                        'condition' => 'enable_home:is(on)',
                        'minlength' => 1,
                        'maxlength' => [
                            'max-length' => 500
                        ],
                        'std' => 25,
                    ],
                    [
                        'id' => 'home_top_destination',
                        'label' => awe_lang('Top Destination'),
                        'type' => 'list_item',
                        'bind_from' => 'home_top_destination_name___',
                        'items' => [
                            [
                                'id' => 'name',
                                'label' => awe_lang('Destination Name'),
                                'type' => 'text',
                                'translation' => true,
                            ],
                            [
                                'id' => 'lat',
                                'label' => awe_lang('Destination Lat'),
                                'type' => 'text',
                            ],
                            [
                                'id' => 'lng',
                                'label' => awe_lang('Destination Lng'),
                                'type' => 'text',
                            ],
                            [
                                'id' => 'image',
                                'label' => awe_lang('Image'),
                                'type' => 'upload',
                            ],
                        ],
                        'layout' => 'col-12 col-md-6',
                        'break' => true,
                        'condition' => 'enable_home:is(on)',
                        'section' => 'home_tab',
                        'translation' => true,
                    ],
                    [
                        'id' => 'home_call_to_action_background',
                        'label' => awe_lang('Call To Action Background'),
                        'type' => 'upload',
                        'section' => 'home_tab',
                        'translation' => false
                    ],
                    [
                        'id' => 'home_call_to_action_page',
                        'label' => awe_lang('Call To Action Page'),
                        'type' => 'select',
                        'choices' => 'page',
                        'layout' => 'col-12 col-sm-6',
                        'style' => 'wide',
                        'break' => true,
                        'section' => 'home_tab'
                    ],
                    [
                        'id' => 'enable_experience',
                        'label' => awe_lang('Service Enable'),
                        'type' => 'on_off',
                        'std' => 'on',
                        'section' => 'experience_tab'
                    ],
                    [
                        'id' => 'experience_featured_image',
                        'label' => awe_lang('Featured Image'),
                        'type' => 'upload',
                        'section' => 'experience_tab',
                        'translation' => false,
                        'condition' => 'enable_experience:is(on)',
                    ],
                    [
                        'id' => 'experience_search_radius',
                        'label' => awe_lang('Search Radius'),
                        'desc' => awe_lang('Search radius to find experience by lat/lng'),
                        'type' => 'range',
                        'layout' => 'col-12 col-md-6',
                        'condition' => 'enable_experience:is(on)',
                        'break' => true,
                        'section' => 'experience_tab',
                        'std' => 25,
                        'minlength' => 1,
                        'maxlength' => [
                            'max-length' => 500
                        ]
                    ],
                    [
                        'id' => 'experience_top_destination',
                        'label' => awe_lang('Top Destination'),
                        'type' => 'list_item',
                        'bind_from' => 'experience_top_destination_name___',
                        'items' => [
                            [
                                'id' => 'name',
                                'label' => awe_lang('Destination Name'),
                                'type' => 'text',
                                'translation' => true,
                            ],
                            [
                                'id' => 'lat',
                                'label' => awe_lang('Destination Lat'),
                                'type' => 'text',
                            ],
                            [
                                'id' => 'lng',
                                'label' => awe_lang('Destination Lng'),
                                'type' => 'text',
                            ],
                            [
                                'id' => 'image',
                                'label' => awe_lang('Image'),
                                'type' => 'upload',
                            ],
                        ],
                        'layout' => 'col-12 col-md-6',
                        'break' => true,
                        'section' => 'experience_tab',
                        'translation' => true,
                    ],
                    [
                        'id' => 'experience_call_to_action_background',
                        'label' => awe_lang('Call To Action Background'),
                        'type' => 'upload',
                        'section' => 'experience_tab',
                        'translation' => false
                    ],
                    [
                        'id' => 'experience_call_to_action_page',
                        'label' => awe_lang('Call To Action Page'),
                        'type' => 'select',
                        'choices' => 'page',
                        'layout' => 'col-12 col-sm-6',
                        'style' => 'wide',
                        'break' => true,
                        'section' => 'experience_tab'
                    ],
                    [
                        'id' => 'enable_car',
                        'label' => awe_lang('Service Enable'),
                        'type' => 'on_off',
                        'std' => 'on',
                        'section' => 'car_tab'
                    ],
                    [
                        'id' => 'car_featured_image',
                        'label' => awe_lang('Featured Image'),
                        'type' => 'upload',
                        'section' => 'car_tab',
                        'translation' => false,
                        'condition' => 'enable_car:is(on)',
                    ],
                    [
                        'id' => 'car_booking_type',
                        'label' => awe_lang('Booking Type'),
                        'type' => 'select',
                        'choices' => [
                            'day' => awe_lang('By Day'),
                            'hour' => awe_lang('By Hour'),
                        ],
                        'std' => 'day',
                        'layout' => 'col-6 col-md-3',
                        'break' => true,
                        'section' => 'car_tab'
                    ],
                    [
                        'id' => 'car_search_radius',
                        'label' => awe_lang('Search Radius'),
                        'desc' => awe_lang('Search radius to find car by lat/lng'),
                        'type' => 'range',
                        'layout' => 'col-12 col-md-6',
                        'condition' => 'enable_car:is(on)',
                        'break' => true,
                        'section' => 'car_tab',
                        'minlength' => 1,
                        'std' => 25,
                        'maxlength' => [
                            'max-length' => 500
                        ]
                    ],
                    [
                        'id' => 'car_top_destination',
                        'label' => awe_lang('Top Destination'),
                        'type' => 'list_item',
                        'condition' => 'enable_car:is(on)',
                        'bind_from' => 'car_top_destination_name___',
                        'items' => [
                            [
                                'id' => 'name',
                                'label' => awe_lang('Destination Name'),
                                'type' => 'text',
                                'translation' => true,
                            ],
                            [
                                'id' => 'lat',
                                'label' => awe_lang('Destination Lat'),
                                'type' => 'text',
                            ],
                            [
                                'id' => 'lng',
                                'label' => awe_lang('Destination Lng'),
                                'type' => 'text',
                            ],
                            [
                                'id' => 'image',
                                'label' => awe_lang('Image'),
                                'type' => 'upload',
                            ]
                        ],
                        'layout' => 'col-12 col-md-6',
                        'break' => true,
                        'section' => 'car_tab',
                        'translation' => true,
                    ],
                    [
                        'id' => 'car_call_to_action_background',
                        'label' => awe_lang('Call To Action Background'),
                        'type' => 'upload',
                        'section' => 'car_tab',
                        'translation' => false
                    ],
                    [
                        'id' => 'car_call_to_action_page',
                        'label' => awe_lang('Call To Action Page'),
                        'type' => 'select',
                        'choices' => 'page',
                        'layout' => 'col-12 col-sm-6',
                        'style' => 'wide',
                        'break' => true,
                        'section' => 'car_tab'
                    ],
                ],
                'section' => 'service_options'
            ],
            [
                'id' => 'payment_tabs',
                'label' => awe_lang('Payment Tabs'),
                'type' => 'payment',
                'layout' => 'col-12',
                'section' => 'payment_options'
            ],
            [
                'id' => 'enable_review',
                'label' => awe_lang('Enable Review'),
                'type' => 'on_off',
                'section' => 'review_options',
                'std' => 'on'
            ],
            [
                'id' => 'review_approval',
                'label' => awe_lang('Review approval'),
                'desc' => awe_lang('Reviews are moderated by the admin before being published'),
                'type' => 'on_off',
                'section' => 'review_options',
                'std' => 'on',
                'condition' => 'enable_review:is(on)'
            ],
            [
                'id' => 'review_after_booking',
                'label' => awe_lang('Review after booking'),
                'desc' => awe_lang('Customers are only allowed to write a review after booking'),
                'type' => 'on_off',
                'section' => 'review_options',
                'std' => 'off',
                'condition' => 'enable_review:is(on)'
            ],
            [
                'id' => 'smtp_host',
                'label' => awe_lang('SMTP Host'),
                'type' => 'text',
                'layout' => 'col-12 col-md-6',
                'break' => true,
                'section' => 'email_options'
            ],
            [
                'id' => 'type_encrytion',
                'label' => awe_lang('Type of Encryption'),
                'type' => 'radio',
                'choices' => [
                    'none' => 'None',
                    'ssl' => 'SSL',
                    'tls' => 'TLS'
                ],
                'std' => 'ssl',
                'section' => 'email_options'
            ],
            [
                'id' => 'smtp_port',
                'label' => awe_lang('SMTP Port'),
                'type' => 'text',
                'layout' => 'col-12 col-md-6',
                'break' => true,
                'section' => 'email_options'
            ],
            [
                'id' => 'smtp_username',
                'label' => awe_lang('SMTP Username'),
                'type' => 'text',
                'layout' => 'col-12 col-md-6',
                'break' => true,
                'section' => 'email_options'
            ],
            [
                'id' => 'smtp_password',
                'label' => awe_lang('SMTP Password'),
                'type' => 'text',
                'layout' => 'col-12 col-md-6',
                'break' => true,
                'section' => 'email_options'
            ],
            [
                'id' => 'email_alert',
                'label' => awe_lang('Tips'),
                'desc' => awe_lang('You can send a test email to check the configuration. Go to Tools -> Advanced -> Email Checker'),
                'type' => 'alert',
                'style' => 'info',
                'layout' => 'col-12 col-md-6',
                'break' => true,
                'section' => 'email_options'
            ],
            [
                'id' => 'send_enquire_email',
                'label' => awe_lang('Send Enquire Email'),
                'type' => 'radio',
                'choices' => [
                    'admin_customer' => awe_lang('Admin & Customer'),
                    'partner_customer' => awe_lang('Partner & Customer'),
                    'admin_partner_customer' => awe_lang('Admin, Partner & Customer')
                ],
                'std' => 'admin_partner_customer',
                'section' => 'email_options'
            ],
            [
                'id' => 'email_from_address',
                'label' => awe_lang('Email From Address'),
                'type' => 'text',
                'layout' => 'col-12 col-md-6',
                'break' => true,
                'section' => 'email_options'
            ],
            [
                'id' => 'email_from',
                'label' => awe_lang('Email From Name'),
                'type' => 'text',
                'layout' => 'col-12 col-md-6',
                'break' => true,
                'translation' => true,
                'section' => 'email_options'
            ],
            [
                'id' => 'email_logo',
                'label' => awe_lang('Email Logo'),
                'type' => 'upload',
                'layout' => 'col-12 col-md-6',
                'section' => 'email_options'
            ],
            [
                'id' => 'enable_partner_registration',
                'label' => awe_lang('Partner Registration'),
                'type' => 'on_off',
                'std' => 'on',
                'section' => 'partner_options'
            ],
            [
                'id' => 'partner_commission',
                'label' => awe_lang('Commission (%)'),
                'type' => 'text',
                'std' => 10,
                'layout' => 'col-12 col-md-6',
                'break' => true,
                'section' => 'partner_options'
            ],
            [
                'id' => 'alert_payout',
                'label' => awe_lang('Note:'),
                'desc' => awe_lang("To use <strong>Payout</strong> feature. You have to setup cron-job on your hosting. <br/>Read this document to setup: <a class='ml-1' href='https://docs.awebooking.org/faqs/how-to-setup-cron-job-for-payout' target='_blank'>Read more</a>"),
                'type' => 'alert',
                'style' => 'warning',
                'layout' => 'col-12 col-md-6',
                'break' => true,
                'section' => 'partner_options'
            ],
            [
                'id' => 'payout_date',
                'label' => awe_lang('Payout Date'),
                'desc' => awe_lang('The system will automatically payout on this date'),
                'type' => 'select',
                'choices' => 'number_range:1_31',
                'std' => date('d'),
                'style' => 'wide',
                'layout' => 'col-12 col-md-3',
                'translation' => false,
                'section' => 'partner_options'
            ],
            [
                'id' => 'payout_time',
                'label' => awe_lang('Payout Time'),
                'desc' => awe_lang('The system will automatically payout on this time'),
                'type' => 'timepicker',
                'std' => '15:00',
                'layout' => 'col-12 col-md-3',
                'break' => true,
                'translation' => false,
                'section' => 'partner_options'
            ],
            [
                'id' => 'min_balance',
                'label' => awe_lang('Minimum Balance'),
                'desc' => awe_lang('Minimum balance for the system to process payout'),
                'type' => 'text',
                'std' => 100,
                'layout' => 'col-12 col-md-6',
                'break' => true,
                'section' => 'partner_options'
            ],
            [
                'id' => 'facebook_login',
                'label' => awe_lang('Facebook Login'),
                'type' => 'on_off',
                'std' => 'off',
                'section' => 'registration'
            ],
            [
                'id' => 'facebook_api',
                'label' => awe_lang('Facebook API'),
                'type' => 'text',
                'layout' => 'col-12 col-md-3',
                'condition' => 'facebook_login:is(on)',
                'section' => 'registration'
            ],
            [
                'id' => 'facebook_secret',
                'label' => awe_lang('Facebook Secret'),
                'type' => 'text',
                'layout' => 'col-12 col-md-3',
                'break' => true,
                'condition' => 'facebook_login:is(on)',
                'section' => 'registration'
            ],
            [
                'id' => 'google_login',
                'label' => awe_lang('Google Login'),
                'type' => 'on_off',
                'std' => 'off',
                'section' => 'registration'
            ],
            [
                'id' => 'google_client_id',
                'label' => awe_lang('Google Client ID'),
                'type' => 'text',
                'layout' => 'col-12 col-md-3',
                'condition' => 'google_login:is(on)',
                'section' => 'registration'
            ],
            [
                'id' => 'google_client_secret',
                'label' => awe_lang('Google Client Secret'),
                'type' => 'text',
                'layout' => 'col-12 col-md-3',
                'break' => true,
                'condition' => 'google_login:is(on)',
                'section' => 'registration'
            ],
            [
                'id' => 'become_a_host_background',
                'label' => awe_lang('Become-a-host Background'),
                'type' => 'upload',
                'section' => 'page_options'
            ],
            [
                'id' => 'become_a_host_background_footer',
                'label' => awe_lang('Become-a-host Footer Background'),
                'type' => 'upload',
                'section' => 'page_options'
            ],
            [
                'id' => 'become_a_host_features',
                'label' => awe_lang('Become-a-host Features'),
                'type' => 'list_item',
                'bind_from' => 'become_a_host_features_title__',
                'items' => [
                    [
                        'id' => 'title',
                        'label' => awe_lang('Title'),
                        'type' => 'text',
                        'translation' => true,
                    ],
                    [
                        'id' => 'detail',
                        'label' => awe_lang('Detail'),
                        'type' => 'textarea',
                        'translation' => true,
                    ],
                    [
                        'id' => 'image',
                        'label' => awe_lang('Image'),
                        'type' => 'upload',
                    ]
                ],
                'layout' => 'col-12 col-md-6',
                'break' => true,
                'translation' => true,
                'section' => 'page_options'
            ],
            [
                'id' => 'coming_soon_date',
                'label' => awe_lang('Coming Soon Date'),
                'type' => 'datepicker',
                'layout' => 'col-12 col-md-3',
                'section' => 'page_options'
            ],
            [
                'id' => 'coming_soon_background',
                'label' => awe_lang('Coming Soon Background'),
                'type' => 'upload',
                'section' => 'page_options'
            ],
            //Footer
            [
                'id' => 'footer_logo',
                'label' => awe_lang('Logo Footer'),
                'type' => 'upload',
                'section' => 'footer_options'
            ],
            [
                'id' => 'list_social',
                'label' => awe_lang('List Social'),
                'type' => 'list_item',
                'bind_from' => 'list_social_social_name___',
                'translation' => true,
                'items' => [
                    [
                        'id' => 'social_name',
                        'label' => awe_lang('Name'),
                        'type' => 'text',
                        'translation' => true,
                    ],
                    [
                        'id' => 'social_icon',
                        'label' => awe_lang('Icon'),
                        'type' => 'icon',
                    ],
                    [
                        'id' => 'social_link',
                        'label' => awe_lang('Link'),
                        'type' => 'text',
                    ]
                ],
                'layout' => 'col-12 col-md-6',
                'break' => true,
                'section' => 'footer_options'
            ],
            [
                'id' => 'footer_menu1_label',
                'label' => awe_lang('First menu label'),
                'type' => 'text',
                'layout' => 'col-12 col-md-3',
                'break' => false,
                'translation' => true,
                'section' => 'footer_options'
            ],
            [
                'id' => 'footer_menu1',
                'label' => awe_lang('First menu'),
                'type' => 'select',
                'style' => 'wide',
                'choices' => 'nav',
                'section' => 'footer_options',
                'break' => true,
                'layout' => 'col-12 col-md-3',
            ],
            [
                'id' => 'footer_menu2_label',
                'label' => awe_lang('Second menu label'),
                'type' => 'text',
                'layout' => 'col-12 col-md-3',
                'break' => false,
                'translation' => true,
                'section' => 'footer_options'
            ],
            [
                'id' => 'footer_menu2',
                'label' => awe_lang('Second menu'),
                'type' => 'select',
                'style' => 'wide',
                'choices' => 'nav',
                'section' => 'footer_options',
                'break' => true,
                'layout' => 'col-12 col-md-3',
            ],
            [
                'id' => 'footer_subscribe_label',
                'label' => awe_lang('Subscribe label'),
                'type' => 'text',
                'layout' => 'col-12 col-md-6',
                'break' => true,
                'translation' => true,
                'section' => 'footer_options'
            ],
            [
                'id' => 'footer_subscribe_description',
                'label' => awe_lang('Subscribe description'),
                'type' => 'text',
                'layout' => 'col-12 col-md-6',
                'break' => true,
                'translation' => true,
                'section' => 'footer_options'
            ],
            [
                'id' => 'copy_right',
                'label' => awe_lang('Copy right text'),
                'type' => 'text',
                'layout' => 'col-12 col-md-6',
                'break' => true,
                'translation' => true,
                'section' => 'footer_options'
            ],
            //End footer
            [
                'id' => 'ical_heading',
                'label' => awe_lang('Automatically sync every'),
                'desc' => awe_lang('Example: Automatically sync every 1 hour 30 minutes'),
                'type' => 'heading',
                'section' => 'ical_options'
            ],
            [
                'id' => 'ical_time_type',
                'label' => awe_lang('Type'),
                'type' => 'select',
                'choices' => [
                    'hour' => awe_lang('Hour'),
                    'minute' => awe_lang('Minute'),
                ],
                'std' => 'hour',
                'layout' => 'col-6 col-md-3',
                'section' => 'ical_options'
            ],
            [
                'id' => 'ical_hour',
                'label' => awe_lang('Hour'),
                'type' => 'select',
                'choices' => 'number_range:1_12',
                'layout' => 'col-6 col-md-3',
                'std' => 1,
                'section' => 'ical_options',
                'condition' => 'ical_time_type:is(hour)'
            ],
            [
                'id' => 'ical_minute',
                'label' => awe_lang('Minutes'),
                'type' => 'select',
                'choices' => 'number_range:1_30',
                'layout' => 'col-6 col-md-3',
                'std' => 30,
                'break' => true,
                'section' => 'ical_options',
                'condition' => 'ical_time_type:is(minute)'
            ],
            [
                'id' => 'ical_alert',
                'type' => 'alert',
                'label' => awe_lang('Warning'),
                'style' => 'warning',
                'desc' => awe_lang('This feature needs to be installed on Cron-job on your server.<br/>Read more: <a target="_blank" href="https://docs.awebooking.org/faqs/how-to-setup-cron-job-for-ical-sync">How to setup Cron-job for Ical Sync</a>'),
                'section' => 'ical_options'
            ],
            [
                'id' => 'site_language',
                'label' => awe_lang('Site Language'),
                'type' => 'select',
                'choices' => 'language',
                'layout' => 'col-12 col-12 col-md-6',
                'style' => 'wide',
                'break' => true,
                'section' => 'advance_options'
            ],
            [
                'id' => 'right_to_left',
                'label' => awe_lang('Right to Left'),
                'type' => 'on_off',
                'std' => 'off',
                'break' => true,
                'section' => 'advance_options'
            ],
            [
                'id' => 'multi_language',
                'label' => awe_lang('Enable multi language'),
                'type' => 'on_off',
                'std' => 'off',
                'section' => 'advance_options',
            ],
            [
                'id' => 'optimize_site',
                'label' => awe_lang('Optimize Site'),
                'desc' => awe_lang('This feature allows you to compress html, cache queries'),
                'type' => 'on_off',
                'std' => 'off',
                'section' => 'advance_options',
            ],
            [
                'id' => 'enable_lazyload',
                'label' => awe_lang('Enable Lazy Load'),
                'desc' => awe_lang('Elements will be loaded when scroll'),
                'type' => 'on_off',
                'std' => 'off',
                'section' => 'advance_options',
            ],
            [
                'id' => 'unit_of_measure',
                'label' => awe_lang('Unit Of Measure'),
                'type' => 'select',
                'choices' => [
                    'm2' => 'm2',
                    'ft2' => 'ft2'
                ],
                'std' => 'm2',
                'layout' => 'col-12 col-md-6',
                'style' => 'wide',
                'break' => true,
                'section' => 'advance_options'
            ],
            [
                'id' => 'mailchimp_api_key',
                'label' => awe_lang('MailChimp API Key'),
                'desc' => awe_lang('This key to connect to MailChimp.'),
                'type' => 'text',
                'layout' => 'col-6 col-md-3',
                'section' => 'advance_options'
            ],
            [
                'id' => 'mailchimp_list',
                'label' => awe_lang('MailChimp List ID'),
                'desc' => awe_lang('The ID of the list you want to add the user to'),
                'type' => 'text',
                'layout' => 'col-6 col-md-3',
                'break' => true,
                'section' => 'advance_options'
            ],
            [
                'id' => 'mapbox_key',
                'label' => awe_lang('Mapbox Key'),
                'desc' => awe_lang('Use this key to enable Mapbox map'),
                'type' => 'text',
                'layout' => 'col-12 col-md-6',
                'break' => true,
                'section' => 'advance_options'
            ],
            [
                'id' => 'google_font_key',
                'label' => awe_lang('Google Font Key'),
                'desc' => awe_lang('Use this key to get Google Fonts'),
                'type' => 'text',
                'layout' => 'col-12 col-md-6',
                'break' => true,
                'section' => 'advance_options'
            ],
            [
                'id' => 'use_google_captcha',
                'label' => awe_lang('Use Google Captcha?'),
                'desc' => awe_lang('Use Google Captcha for checkout form, review form, contact us form, ...'),
                'type' => 'on_off',
                'section' => 'advance_options',
            ],
            [
                'id' => 'google_captcha_site_key',
                'label' => awe_lang('Google Captcha Key'),
                'type' => 'text',
                'condition' => 'use_google_captcha:is(on)',
                'layout' => 'col-6 col-md-3',
                'section' => 'advance_options'
            ],
            [
                'id' => 'google_captcha_secret_key',
                'label' => awe_lang('Google Captcha Secret'),
                'type' => 'text',
                'condition' => 'use_google_captcha:is(on)',
                'layout' => 'col-6 col-md-3',
                'break' => true,
                'section' => 'advance_options'
            ],
            [
                'id' => 'enable_gdpr',
                'label' => awe_lang('Enable GDPR Cookie'),
                'type' => 'on_off',
                'std' => 'off',
                'section' => 'advance_options'
            ],
            [
                'id' => 'gdpr_page',
                'label' => awe_lang('GDPR Statement Page'),
                'type' => 'select',
                'choices' => 'page',
                'layout' => 'col-12 col-md-3',
                'break' => true,
                'condition' => 'enable_gdpr:is(on)',
                'section' => 'advance_options'
            ],
            [
                'id' => 'user_admin',
                'label' => awe_lang('Admin User'),
                'desc' => awe_lang('Choose an account to set as Administrator'),
                'type' => 'select',
                'style' => 'wide',
                'choices' => 'user:administrator',
                'section' => 'advance_options',
                'break' => true,
                'layout' => 'col-12 col-md-6',
            ],
            [
                'id' => 'featured_text',
                'label' => awe_lang('Featured Label'),
                'desc' => awe_lang('Setup featured label for home featured item'),
                'type' => 'text',
                'layout' => 'col-12 col-md-6',
                'std' => 'Featured',
                'translation' => true,
                'break' => true,
                'section' => 'advance_options'
            ],
            [
                'id' => 'use_ssl',
                'label' => awe_lang('Enable SSL'),
                'desc' => awe_lang('The page needs to reload to be applied'),
                'type' => 'on_off',
                'section' => 'advance_options'
            ],
            [
                'id' => 'timezone',
                'label' => awe_lang('Time Zone'),
                'type' => 'select2',
                'choices' => get_time_zone(),
                'choice_group' => true,
                'std' => 'Europe/London',
                'layout' => 'col-12 col-md-6',
                'section' => 'advance_options'
            ],
            [
                'id' => 'affiliates_tabs',
                'label' => awe_lang('Affiliates Tabs'),
                'type' => 'tab',
                'tab_title' => [

                ],
                'tab_content' => [

                ],
                'section' => 'affiliate_options'
            ]
        ]
    ],
];
