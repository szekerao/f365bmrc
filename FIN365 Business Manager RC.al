page 70700010 "FIN365 Business Manager RC"
{
    // version F365.RC1.W110.00

    // CurrPage."Help And Setup List".ShowFeatured;

    CaptionML = ENU = 'Business Manager Role Center',
                HUN = 'Üzleti vezető szerepkörfőoldala',
                DES = 'Rollencenter: Geschäftsführer',
                ITS = 'Gestione ruolo utente manager aziendale',
                FRS = 'Tableau de bord pour gestionnaire d''activité';
    PageType = RoleCenter;

    layout
    {
        area(rolecenter)
        {
            Description = 'FIN365 Business Manager';
            part(Activities; "FIN365 Business Manager Cue")
            {
                Caption = 'Activities';
            }
            part(Control1000000002; "FIN365 Approvals")
            {
                ShowFilter = false;
            }
        }
    }

    actions
    {
        area(processing)
        {
            group(New)
            {
                CaptionML = ENU = 'New',
                            HUN = 'Új',
                            DES = 'Neu',
                            ITS = 'Nuovo',
                            FRS = 'Nouveau';
                action("Sales Quote")
                {
                    ApplicationArea = Basic, Suite;
                    CaptionML = ENU = 'Sales Quote',
                                HUN = 'Eladási ajánlat',
                                DES = 'Verkaufsofferte',
                                ITS = 'Offerta vendita',
                                FRS = 'Devis';
                    Image = NewSalesQuote;
                    RunObject = Page "Sales Quote";
                    RunPageMode = Create;
                    ToolTipML = ENU = 'Create a new sales quote where you offer items or services to a customer.',
                                DES = 'Erstellt eine neue Verkaufsofferte, in der Sie einem Debitor Artikel oder Dienste anbieten.',
                                ITS = 'Creare una nuova offerta di vendita nella quale si offrono articoli o servizi a un cliente.',
                                FRS = 'Créez un devis proposant des articles ou des services ů un client.';
                }
                action("Sales Order")
                {
                    ApplicationArea = Basic, Suite;
                    CaptionML = ENU = 'Sales Order',
                                HUN = 'Eladási rendelés',
                                DES = 'Auftrag',
                                ITS = 'Ordine vendita',
                                FRS = 'Commande vente';
                    Image = NewOrder;
                    RunObject = Page "Sales Order";
                    RunPageMode = Create;
                    ToolTipML = ENU = 'Create a new sales order for items or services that require partial posting or order confirmation.',
                                DES = 'Erstellt einen neuen Auftrag für Artikel oder Dienste, die eine Teilbuchung oder Auftragsbestätigung erfordern.',
                                ITS = 'Creare un nuovo ordine cliente per articoli o servizi che richiedono la registrazione parziale o la conferma dell''ordine.',
                                FRS = 'Créez une commande vente pour des articles ou des services nécessitant une validation partielle ou une confirmation commande.';
                }
                action("Sales Invoice")
                {
                    ApplicationArea = Basic, Suite;
                    CaptionML = ENU = 'Sales Invoice',
                                HUN = 'Eladási számla',
                                DES = 'Verkaufsrechnung',
                                ITS = 'Fattura vendita',
                                FRS = 'Facture vente';
                    Image = NewSalesInvoice;
                    RunObject = Page "Sales Invoice";
                    RunPageMode = Create;
                    ToolTipML = ENU = 'Create a new sales invoice for items or services. Quantities cannot be posted partially.',
                                DES = 'Erstellt eine neue Verkaufsrechnung für Artikel oder Dienste. Mengen können nicht teilweise gebucht werden.',
                                ITS = 'Creare una nuova fattura di vendita per articoli o servizi. Le quantitů non possono essere registrate parzialmente.',
                                FRS = 'Créez une facture vente pour des articles ou des services. Il est impossible de valider les quantités partiellement.';
                }
                action("<Page Purchase Order>")
                {
                    ApplicationArea = Suite;
                    CaptionML = ENU = 'Purchase Order',
                                HUN = 'Beszerzési rendelés',
                                DES = 'Bestellung',
                                ITS = 'Ordine acquisto',
                                FRS = 'Commande achat';
                    Image = NewOrder;
                    RunObject = Page "Purchase Order";
                    RunPageMode = Create;
                    ToolTipML = ENU = 'Create a new purchase order.',
                                DES = 'Erstellt eine neue Bestellung.',
                                ITS = 'Creare un nuovo ordine di acquisto.',
                                FRS = 'Créez une commande achat.';
                }
                action("Purchase Invoice")
                {
                    ApplicationArea = Basic, Suite;
                    CaptionML = ENU = 'Purchase Invoice',
                                HUN = 'Beszerzési számla',
                                DES = 'Einkaufsrechnung',
                                ITS = 'Fattura acquisto',
                                FRS = 'Facture achat';
                    Image = NewPurchaseInvoice;
                    RunObject = Page "Purchase Invoice";
                    RunPageMode = Create;
                    ToolTipML = ENU = 'Create a new purchase invoice for items or services.',
                                DES = 'Erstellt eine neue Einkaufsrechnung für Artikel oder Dienste.',
                                ITS = 'Creare una nuova fattura di acquisto per articoli o servizi.',
                                FRS = 'Créez une facture achat pour les articles ou les services.';
                }
                action(Customer)
                {
                    ApplicationArea = Basic, Suite;
                    CaptionML = ENU = 'Customer',
                                HUN = 'Vevő',
                                DES = 'Debitor',
                                ITS = 'Cliente',
                                FRS = 'Client';
                    Image = Customer;
                    RunObject = Page "Customer Card";
                    RunPageMode = Create;
                    ToolTipML = ENU = 'Register a new customer.',
                                DES = 'Registriert einen neuen Debitor.',
                                ITS = 'Registrare un nuovo cliente.',
                                FRS = 'Enregistrez un nouveau client.';
                }
                action(Vendor)
                {
                    ApplicationArea = Basic, Suite;
                    CaptionML = ENU = 'Vendor',
                                HUN = 'Szállító',
                                DES = 'Kreditor',
                                ITS = 'Fornitore',
                                FRS = 'Fournisseur';
                    Image = Vendor;
                    RunObject = Page "Vendor Card";
                    RunPageMode = Create;
                    ToolTipML = ENU = 'Register a new vendor.',
                                DES = 'Registriert einen neuen Kreditor.',
                                ITS = 'Registrare un nuovo fornitore.',
                                FRS = 'Enregistrez un nouveau fournisseur.';
                }
            }
            group(Payments)
            {
                CaptionML = ENU = 'Payments',
                            HUN = 'Fizetések',
                            DES = 'Zahlungen',
                            ITS = 'Pagamenti',
                            FRS = 'Paiements';
                group("Process Payments")
                {
                    CaptionML = ENU = 'Process Payments',
                                HUN = 'Fizetések feldolgozása',
                                DES = 'Bearbeiten von Zahlungen',
                                ITS = 'Elabora pagamenti',
                                FRS = 'Traitement des paiements';
                    Image = Reconcile;
                    action("Payment Reconciliation Journals")
                    {
                        ApplicationArea = Basic, Suite;
                        CaptionML = ENU = 'Reconcile Imported Payments',
                                    HUN = 'Importált fizetések egyeztetése',
                                    DES = 'Importierte Zahlungen abstimmen',
                                    ITS = 'Riconcilia pagamenti importati',
                                    FRS = 'Rapprocher les paiements importés';
                        Image = ApplyEntries;
                        RunObject = Codeunit "Pmt. Rec. Journals Launcher";
                        ToolTipML = ENU = 'Reconcile your bank account by importing transactions and applying them, automatically or manually, to open customer ledger entries, open vendor ledger entries, or open bank account ledger entries.',
                                    DES = 'Stimmt Ihr Bankkonto ab, indem Transaktionen importiert und automatisch oder manuell mit offenen Debitorenposten, offenen Kreditorenposten oder offenen Bankposten ausgeglichen werden.',
                                    ITS = 'Riconciliare il conto bancario importando le transazioni e collegandole, automaticamente o manualmente, ai movimenti contabili aperti del cliente, ai movimenti contabili aperti del fornitore o ai movimenti contabili aperti del conto bancario.',
                                    FRS = 'Effectuez un rapprochement de votre compte bancaire en important les transactions, puis en les lettrant, manuellement ou automatiquement, avec les écritures comptables client, les écritures comptables fournisseur ou les écritures comptables banque.';
                    }
                    action("Import Bank Transactions")
                    {
                        ApplicationArea = Basic, Suite;
                        CaptionML = ENU = 'Import Bank Transactions...',
                                    HUN = 'Banktranzakciók importálása...',
                                    DES = 'Banktransaktionen importieren...',
                                    ITS = 'Importa transazioni bancarie...',
                                    FRS = 'Importer les transactions bancaires...';
                        Image = Import;
                        RunObject = Codeunit "Pmt. Rec. Jnl. Import Trans.";
                        ToolTipML = ENU = 'To start the process of reconciling new payments, import a bank feed or electronic file containing the related bank transactions.',
                                    DES = 'Importiert einen Bankenfeed oder eine elektronische Datei mit den zugehörigen Banktransaktionen, um den Prozess zum Abstimmen neuer Zahlungen zu starten.',
                                    ITS = 'Per avviare il processo di riconciliazione di nuovi pagamenti, importare un feed o un file elettronico della banca contenente le transazioni della banca correlate.',
                                    FRS = 'Pour lancer le processus de rapprochement des nouveaux paiements, importez un flux bancaire ou un fichier électronique contenant les transactions bancaires associées.';
                    }
                    action("Register Customer Payments")
                    {
                        ApplicationArea = Basic, Suite;
                        CaptionML = ENU = 'Register Customer Payments',
                                    HUN = 'Vevői fizetések regisztrálása',
                                    DES = 'Kundenzahlungen registrieren',
                                    ITS = 'Registra pagamenti clienti',
                                    FRS = 'Enregistrer les paiements client';
                        Image = Payment;
                        RunObject = Page "Payment Registration";
                        ToolTipML = ENU = 'Process you customers'' payments by matching amounts received on your bank account with the related unpaid sales invoices, and then post the payments.',
                                    DES = 'Verarbeitet die Zahlungen Ihrer Debitoren, indem die auf Ihrem Konto eingegangenen Beträge den entsprechenden unbezahlten Verkaufsrechnungen zugeordnet und anschliessend die Zahlungen gebucht werden.',
                                    ITS = 'Elaborare i pagamenti dei clienti facendo corrispondere gli importi ricevuti sul conto bancario alle relative fatture di vendita non pagate, quindi registrare i pagamenti.',
                                    FRS = 'Traitez les paiements de vos clients en faisant correspondre les montants perçus sur votre compte bancaires avec les factures vente impayées associées, puis validez les paiements.';
                    }
                }
            }
            group(Reports)
            {
                CaptionML = ENU = 'Reports',
                            HUN = 'Jelentések',
                            DES = 'Berichte',
                            ITS = 'Report',
                            FRS = 'États';
                group("Financial Statements")
                {
                    CaptionML = ENU = 'Financial Statements',
                                HUN = 'Pénzügyi kimutatások',
                                DES = 'Finanzauswertungen',
                                ITS = 'Rendiconti finanziari',
                                FRS = 'Rapports financiers';
                    Image = ReferenceData;
                    action("Balance Sheet")
                    {
                        ApplicationArea = Basic, Suite;
                        CaptionML = ENU = 'Balance Sheet',
                                    HUN = 'Mérleg',
                                    DES = 'Bilanz',
                                    ITS = 'Conto patrimoniale',
                                    FRS = 'Bilan';
                        Image = "Report";
                        Promoted = true;
                        PromotedCategory = "Report";
                        PromotedIsBig = true;
                        RunObject = Codeunit "Run Acc. Sched. Balance Sheet";
                        ToolTipML = ENU = 'View a report that shows your company''s assets, liabilities, and equity.',
                                    DES = 'Zeigt einen Bericht, der Anlagen, Verbindlichkeiten und Eigenkapital Ihres Unternehmens anzeigt.',
                                    ITS = 'Visualizzare un report che indica il patrimonio netto, le passivitů e i cespiti della societů.',
                                    FRS = 'Affichez un état qui présente les immobilisations, les emprunts et dettes et les capitaux propres de votre société.';
                    }
                    action("Income Statement")
                    {
                        ApplicationArea = Basic, Suite;
                        CaptionML = ENU = 'Income Statement',
                                    HUN = 'Eredménykimutatás',
                                    DES = 'Erfolgsrechnung',
                                    ITS = 'Conto economico',
                                    FRS = 'Comptes de gestion';
                        Image = "Report";
                        Promoted = true;
                        PromotedCategory = "Report";
                        PromotedIsBig = true;
                        RunObject = Codeunit "Run Acc. Sched. Income Stmt.";
                        ToolTipML = ENU = 'View a report that shows your company''s income and expenses.',
                                    DES = 'Zeigt einen Bericht, der Einnahmen und Ausgaben Ihres Unternehmens anzeigt.',
                                    ITS = 'Visualizzare un report che indica le spese e i ricavi della societů.',
                                    FRS = 'Affichez un état qui présente les revenus et les dépenses.';
                    }
                    action("Statement of Cash Flows")
                    {
                        ApplicationArea = Basic, Suite;
                        CaptionML = ENU = 'Statement of Cash Flows',
                                    HUN = 'Cash Flow kimutatás',
                                    DES = 'Cashflow-Auszug',
                                    ITS = 'Rendiconto dei flussi di cassa',
                                    FRS = 'Déclaration des trésoreries';
                        Image = "Report";
                        Promoted = true;
                        PromotedCategory = "Report";
                        PromotedIsBig = true;
                        RunObject = Codeunit "Run Acc. Sched. CashFlow Stmt.";
                        ToolTipML = ENU = 'View a financial statement that shows how changes in balance sheet accounts and income affect the company''s cash holdings, displayed for operating, investing, and financing activities respectively.',
                                    DES = 'Zeigt eine Finanzauswertung an, die zeigt, wie Änderungen in Bilanzkonten und Einnahmen die liquiden Bestände des Unternehmens beeinflussen, jeweils angezeigt für Betriebs-, Investitions- und Finanzierungsaktivitäten.',
                                    ITS = 'Visualizzare un rendiconto finanziario che indica come le modifiche nei conti patrimoniali e nel reddito influenzano la liquiditů di cassa della societů, visualizzata per le attivitů operative, di investimento e di finanziamento rispettivamente.',
                                    FRS = 'Affichez un état financier qui présente la maniŐre dont les modifications apportées aux comptes de bilan et aux revenus ont un impact sur les liquidités détenues par la société, affichées respectivement pour les activités d''exploitation, d''investissement et de financement.';
                    }
                    action("Statement of Retained Earnings")
                    {
                        ApplicationArea = Basic, Suite;
                        CaptionML = ENU = 'Statement of Retained Earnings',
                                    HUN = 'Eredménytartalék kimutatás',
                                    DES = 'Auszug nicht ausgeschütteter Gewinne',
                                    ITS = 'Rendiconto degli utili non distribuiti',
                                    FRS = 'Déclaration des réserves';
                        Image = "Report";
                        Promoted = true;
                        PromotedCategory = "Report";
                        PromotedIsBig = true;
                        RunObject = Codeunit "Run Acc. Sched. Retained Earn.";
                        ToolTipML = ENU = 'View a report that shows your company''s changes in retained earnings for a specified period by reconciling the beginning and ending retained earnings for the period, using information such as net income from the other financial statements.',
                                    DES = 'Zeigt einen Bericht, der die Änderungen Ihres Unternehmens bei nicht ausgeschütteten Gewinnen für eine angegebene Periode durch Abstimmung der nicht ausgeschütteten Gewinne am Anfang und Schluss der Periode mithilfe von Informationen wie Nettoeinnahmen aus den anderen Finanzauswertungen anzeigt.',
                                    ITS = 'Visualizzare un report che indica le modifiche della societů alla riserva legale per un determinato periodo tramite la riconciliazione della riserva legale di inizio e di fine per il periodo, utilizzando informazioni come il reddito netto dagli altri rendiconti finanziari.',
                                    FRS = 'Affichez un état qui affiche les modifications apportées par votre société en matiŐre de réserves pour une période données en rapprochant les réserves initiales et les réserves finales pour la période, ů l''aide d''informations telles que les revenus nets des autres états financiers.';
                    }
                }
            }
            group(Setup)
            {
                CaptionML = ENU = 'Setup',
                            HUN = 'Beállítás',
                            DES = 'Einrichtung',
                            ITS = 'Setup',
                            FRS = 'ParamŐtres';
                Image = Setup;
                action("Company Settings")
                {
                    ApplicationArea = Basic, Suite;
                    CaptionML = ENU = 'Company Settings',
                                HUN = 'Vállalat beállításai',
                                DES = 'Unternehmenseinstellungen',
                                ITS = 'Impostazioni societů',
                                FRS = 'ParamŐtres de la société';
                    Image = CompanyInformation;
                    RunObject = Page "Company Information";
                    ToolTipML = ENU = 'Enter the company name, address, and bank information that will be inserted on your business documents.',
                                DES = 'Gibt den Namen und die Adresse sowie die Bankverbindung des Unternehmens ein, die in Ihre Geschäftsbelege eingefügt werden.',
                                ITS = 'Immettere il nome, l''indirizzo e le informazioni bancarie della societů che verranno inseriti nei documenti commerciali.',
                                FRS = 'Entrez le nom de la société, l''adresse et les informations bancaires qui sont mentionnés sur vos documents professionnels.';
                }
                action("Assisted Setup & Tasks")
                {
                    ApplicationArea = Basic, Suite;
                    CaptionML = ENU = 'Assisted Setup & Tasks',
                                HUN = 'Beállítási varázslók',
                                DES = 'Unterstützte Einrichtung und Aufgaben',
                                ITS = 'Setup e attivitů assistiti',
                                FRS = 'Configuration assistée et tâches';
                    Image = QuestionaireSetup;
                    RunObject = Page "Assisted Setup";
                    ToolTipML = ENU = 'Set up core functionality such as sales tax, sending documents as email, and approval workflow by running through a few pages that guide you through the information.',
                                DES = 'Richtet wichtige Funktionen wie Salestax, Senden von Belegen als E-Mail und Genehmigungsworkflow mittels Durchlaufen einiger Seiten als Leitfaden zu den Informationen ein.',
                                ITS = 'Impostare la funzionalitů di base, come ad esempio l''IVA, l''invio di documenti tramite e-mail e il workflow di approvazione, seguendo le informazioni che guidano l''utente riportate in poche pagine.',
                                FRS = 'Configurez les fonctionnalités essentielles telles que la taxe de vente, l''envoi de documents en tant qu''e-mail et le flux de travail approbation en parcourant quelques pages qui vous guident vers les informations.';
                }
                group("Services & Extensions")
                {
                    CaptionML = ENU = 'Services & Extensions',
                                HUN = 'Szolgáltatások és bővítmények',
                                DES = 'Dienste und Erweiterungen',
                                ITS = 'Servizi ed estensioni',
                                FRS = 'Service et extensions';
                    Image = ServiceSetup;

                    action("Service Connections")
                    {
                        ApplicationArea = Basic, Suite;
                        CaptionML = ENU = 'Service Connections',
                                    HUN = 'Szolgáltatáskapcsolatok',
                                    DES = 'Dienstverbindungen',
                                    ITS = 'Connessioni servizio',
                                    FRS = 'Connexions au service';
                        Image = ServiceTasks;
                        RunObject = Page "Service Connections";
                        ToolTipML = ENU = 'Enable and configure external services, such as exchange rate updates, Microsoft Social Engagement, and electronic bank integration.',
                                    DES = 'Aktiviert und konfiguriert externe Dienste, wie Wechselkursaktualisierungen, Microsoft Social Engagement und elektronische Bankintegration.',
                                    ITS = 'Abilitare e configurare servizi esterni, ad esempio l''aggiornamento dei tassi di cambio, Microsoft Social Engagement e l''integrazione bancaria elettronica.',
                                    FRS = 'Activez et configurez des services externes, comme les mises ů jour des taux de change, Microsoft Social Engagement et l''intégration de la banque électronique.';
                    }
                }
            }
        }
        area(embedding)
        {
            ToolTipML = ENU = 'Manage your business. See KPIs, trial balance, and favorite customers.',
                        DES = 'Verwaltet Ihr Unternehmen. Zeigt KPIs, Bilanzen und bevorzugte Debitoren an.',
                        ITS = 'Gestire l''attivitů. Esaminare gli indicatori KPI, il bilancio di verifica e i clienti preferiti.',
                        FRS = 'Gérez votre activité commerciale. Examinez les KPI, la balance et les clients favoris.';
            action(Customers)
            {
                ApplicationArea = Basic, Suite;
                CaptionML = ENU = 'Customers',
                            HUN = 'Vevők',
                            DES = 'Debitoren',
                            ITS = 'Clienti',
                            FRS = 'Clients';
                RunObject = Page "Customer List";
                ToolTipML = ENU = 'Open the list of customers.',
                            DES = 'Öffnet die Liste der Debitoren.',
                            ITS = 'Aprire l''elenco dei clienti.',
                            FRS = 'Ouvrez la liste des clients.';
            }
            action(Vendors)
            {
                ApplicationArea = Basic, Suite;
                CaptionML = ENU = 'Vendors',
                            HUN = 'Szállítók',
                            DES = 'Kreditoren',
                            ITS = 'Fornitori',
                            FRS = 'Fournisseurs';
                RunObject = Page "Vendor List";
                ToolTipML = ENU = 'View a list of vendors that you can buy items from.',
                            DES = 'Zeigt eine Liste von Kreditoren an, von denen Sie Artikel kaufen können.',
                            ITS = 'Visualizzare l''elenco dei fornitori da cui Ő possibile acquistare articoli.',
                            FRS = 'Affichez la liste des fournisseurs auprŐs desquels vous pouvez acheter des articles.';
            }
            action(Items)
            {
                ApplicationArea = Basic, Suite;
                CaptionML = ENU = 'Items',
                            HUN = 'Cikkek',
                            DES = 'Artikel',
                            ITS = 'Articoli',
                            FRS = 'Articles';
                RunObject = Page "Item List";
                ToolTipML = ENU = 'Open the list of items that you trade in. Items can be either an inventory item and a service.',
                            DES = 'Öffnet die Liste der Artikel, mit denen Sie handeln. Artikel können ein Lagerartikel oder ein Dienst sein.',
                            ITS = 'Aprire l''elenco degli articoli trattati. Possono essere articoli di magazzino e servizi.',
                            FRS = 'Ouvrez la liste des articles que vous commercialisez. Les articles peuvent łtre un article en stock ou un service.';
            }
        }
        area(sections)
        {
            group(Finance)
            {
                CaptionML = ENU = 'Finance',
                            HUN = 'Könyvelés',
                            DES = 'Finanzen',
                            ITS = 'Contabilitů',
                            FRS = 'Finance';
                Image = Journals;
                ToolTipML = ENU = 'Collect and make payments, prepare statements, and reconcile bank accounts.',
                            DES = 'Erfasst und verarbeitet Zahlungen, bereitet Auszüge vor und stimmt Bankkonten ab.',
                            ITS = 'Raccogliere ed effettuare pagamenti, preparare rendiconti e riconciliare conti bancari.',
                            FRS = 'Recueillez et effectuez les paiements, préparez les relevés et rapprochez les comptes bancaires.';
                action(GeneralJournals)
                {
                    ApplicationArea = Basic, Suite;
                    CaptionML = ENU = 'General Journals',
                                HUN = 'Áfakimutatások',
                                DES = 'Fibu Erfassungsjournale',
                                ITS = 'Registrazioni COGE',
                                FRS = 'Feuilles comptabilité';
                    Image = Journal;
                    RunObject = Page "General Journal Batches";
                    RunPageView = WHERE ("Template Type" = CONST (General),
                                        Recurring = CONST (false));
                    ToolTipML = ENU = 'Open the list of general journal, for example, to record or post a payment that has no related document.',
                                DES = 'Öffnet die Liste der Fibu Buch.-Blätter, z. B. um eine Zahlung aufzuzeichnen oder zu buchen, die keinen zugehörigen Beleg aufweist.',
                                ITS = 'Aprire l''elenco delle registrazioni COGE, ad esempio per registrare un pagamento a cui non Ő correlato alcun documento.',
                                FRS = 'Ouvrez la liste des feuilles comptabilité, par exemple pour enregistrer ou valider un paiement qui n''a aucun document associé.';
                }
                action("Chart of Accounts")
                {
                    ApplicationArea = Basic, Suite;
                    CaptionML = ENU = 'Chart of Accounts',
                                HUN = 'Főkönyvi naplók',
                                DES = 'Kontenplan',
                                ITS = 'Piano dei conti',
                                FRS = 'Plan comptable';
                    RunObject = Page "Chart of Accounts";
                    ToolTipML = ENU = 'View the chart of accounts.',
                                DES = 'Zeigt den Kontenplan an.',
                                ITS = 'Visualizzare il piano dei conti.',
                                FRS = 'Affichez le plan comptable.';
                }
                action("Account Schedules")
                {
                    ApplicationArea = Basic, Suite;
                    CaptionML = ENU = 'Account Schedules',
                                HUN = 'Készletelemzési jelentések',
                                DES = 'Kontenschema',
                                ITS = 'Situazioni contabili',
                                FRS = 'Tableaux d''analyse';
                    RunObject = Page "Account Schedule Names";
                    ToolTipML = ENU = 'Open your account schedules to analyze figures in general ledger accounts or to compare general ledger entries with general ledger budget entries.',
                                DES = 'Öffnet Ihre Kontenschema zum Analysieren der Werte auf Sachkonten oder zum Vergleichen von Sachposten mit Finanzbudgetposten.',
                                ITS = 'Aprire le situazioni contabili per analizzare le cifre nei conti di contabilitů generale o confrontare i movimenti contabili con i movimenti budget di contabilitů generale.',
                                FRS = 'Ouvrez vos tableaux d''analyse pour analyser les chiffres des comptes généraux ou pour comparer les écritures comptables et les écritures comptables budget.';
                }
                action("G/L Account Categories")
                {
                    ApplicationArea = Basic, Suite;
                    CaptionML = ENU = 'G/L Account Categories',
                                HUN = 'Főkönyvi számlakategóriák',
                                DES = 'Fibukontokategorien',
                                ITS = 'Categorie conto C/G',
                                FRS = 'Catégories de compte général';
                    RunObject = Page "G/L Account Categories";
                    ToolTipML = ENU = 'View the categories that are created to organize G/L accounts.',
                                DES = 'Zeigt die Kategorien an, die zum Organisieren der Finanzbuchhaltungskonten erstellt wurden.',
                                ITS = 'Visualizzare le categorie create per organizzare i conti C/G.',
                                FRS = 'Affichez les catégories créées pour organiser les comptes généraux.';
                }
                action(CashReceiptJournals)
                {
                    ApplicationArea = Basic, Suite;
                    CaptionML = ENU = 'Cash Receipt Journals',
                                HUN = 'Könyvelt beszerzési számlák',
                                DES = 'Zlg.-Eing. Erfassungsjournale',
                                ITS = 'Registrazioni incassi',
                                FRS = 'Feuilles rŐglement';
                    Image = Journals;
                    RunObject = Page "General Journal Batches";
                    RunPageView = WHERE ("Template Type" = CONST ("Cash Receipts"),
                                        Recurring = CONST (false));
                    ToolTipML = ENU = 'Register received payments by applying them to the related customer, vendor, or bank ledger entries.',
                                DES = 'Registriert eingegangene Zahlungen durch Ausgleichen in entsprechenden Debitoren-, Kreditoren- oder Bankposten.',
                                ITS = 'Registrare i pagamenti ricevuti collegandoli ai relativi movimenti clienti, fornitori e bancari.',
                                FRS = 'Enregistrez les paiements reçus en les lettrant avec les écritures comptables bancaires, fournisseur ou client concernées.';
                }
                action(PaymentJournals)
                {
                    ApplicationArea = Basic, Suite;
                    CaptionML = ENU = 'Payment Journals',
                                HUN = 'Bankszámlák',
                                DES = 'Zlg.-Ausg. Erfassungsjournale',
                                ITS = 'Registrazioni pagamenti',
                                FRS = 'Feuilles paiement';
                    Image = Journals;
                    RunObject = Page "General Journal Batches";
                    RunPageView = WHERE ("Template Type" = CONST (Payments),
                                        Recurring = CONST (false));
                    ToolTipML = ENU = 'Open the list of payment journals where you can register payments to vendors.',
                                DES = 'Öffnet die Liste der Zahlungsausgangs Erfassungsjournale, in der Sie Zahlungen an Kreditoren registrieren können.',
                                ITS = 'Aprire l''elenco delle registrazioni pagamenti in cui Ő possibile registrare i pagamenti ai fornitori.',
                                FRS = 'Ouvrez la liste des feuilles paiement oŚ vous pouvez enregistrer les paiements aux fournisseurs.';
                }
                action("Bank Accounts")
                {
                    ApplicationArea = Basic, Suite;
                    CaptionML = ENU = 'Bank Accounts',
                                HUN = 'Bank és fizetések',
                                DES = 'Bankkonten',
                                ITS = 'C/C bancari',
                                FRS = 'Comptes bancaires';
                    Image = BankAccount;
                    RunObject = Page "Bank Account List";
                    ToolTipML = ENU = 'View or set up your the customers and vendors bank accounts. You can set up any number of bank accounts for each.',
                                DES = 'Zeigt Bankkonten der Debitoren und Kreditoren an oder richtet sie ein. Sie können für jeden einzelnen eine beliebige Anzahl von Bankkonten einrichten.',
                                ITS = 'Visualizzare o impostare i conti bancari dei fornitori e dei clienti. ď possibile impostare un numero qualsiasi di conti bancari per ciascun fornitore/cliente.',
                                FRS = 'Affichez ou configurez les comptes bancaires de vos fournisseurs et clients. Vous pouvez configurer autant de comptes bancaires que vous le souhaitez pour chacun.';
                }
                action(Action20)
                {
                    ApplicationArea = Basic, Suite;
                    CaptionML = ENU = 'Payment Reconciliation Journals',
                                HUN = 'Fizetési egyeztetési naplók',
                                DES = 'Zahlungsabstimmungserfassungsjournale',
                                ITS = 'Registrazioni riconciliazione pagamenti',
                                FRS = 'Feuilles rapprochement bancaire';
                    Image = ApplyEntries;
                    RunObject = Page "Pmt. Reconciliation Journals";
                    ToolTipML = ENU = 'Open a list of journals where you can reconcile unpaid documents automatically with their related bank transactions by importing a bank statement feed or file.',
                                DES = 'Öffnet eine Liste der Erfassungsjournale, in denen unbezahlte Belege automatisch mit den zugehörigen Banktransaktionen durch Importieren eines Bankauszugs als Feed oder Datei abgestimmt werden können.',
                                ITS = 'Aprire l''elenco delle registrazioni in cui Ő possibile riconciliare i documenti non pagati automaticamente con le relative transazioni bancarie importando un file o un feed di rendiconto bancario.',
                                FRS = 'Ouvrez une liste de feuilles oŚ vous pouvez rapprocher automatiquement les documents impayés et leurs transactions bancaires associées en important un flux bancaire ou un fichier de relevé bancaire.';
                }
                action("Bank Acc. Statements")
                {
                    ApplicationArea = Basic, Suite;
                    CaptionML = ENU = 'Bank Acc. Statements',
                                HUN = 'Könyvelt beszerzési jóváírások',
                                DES = 'Bankkontoauszüge',
                                ITS = 'Estratti conto bancari',
                                FRS = 'Relevés bancaires';
                    Image = BankAccountStatement;
                    RunObject = Page "Bank Account Statement List";
                    ToolTipML = ENU = 'View statements for selected bank accounts. For each bank transaction, the report shows a description, an applied amount, a statement amount, and other information.',
                                DES = 'Zeigt Auszüge für ausgewählte Bankkonten an. Der Bericht enthält für jede Banktransaktion eine Beschreibung, einen Ausgleichsbetrag, einen Auszugsbetrag und andere Daten.',
                                ITS = 'Visualizzare gli estratti conto dei conti bancari selezionati. Per ogni transazione bancaria, nel report vengono visualizzati una descrizione, un importo collegato, l''importo dell''estratto conto e altre informazioni.',
                                FRS = 'Affichez les relevés des comptes bancaires sélectionnés. Pour chaque transaction bancaire, l''état affiche une description, un montant rapproché, un montant de relevé et d''autres informations.';
                }
                action("Direct Debit Collections")
                {
                    CaptionML = ENU = 'Direct Debit Collections',
                                HUN = 'Késedelmikamat-közlők',
                                DES = 'Basislastschriften',
                                ITS = 'Riscossioni addebiti diretti',
                                FRS = 'Recouvrements prélŐvement';
                    RunObject = Page "Direct Debit Collections";
                }
                action(Currencies)
                {
                    ApplicationArea = Suite;
                    CaptionML = ENU = 'Currencies',
                                HUN = 'Elküldött késedelmikamat-közlők',
                                DES = 'Währungen',
                                ITS = 'Valute',
                                FRS = 'Devises';
                    Image = Currency;
                    RunObject = Page Currencies;
                    ToolTipML = ENU = 'View the different currencies that you trade in.',
                                DES = 'Zeigt die verschiedenen Währungen an, in denen Sie handeln.',
                                ITS = 'Visualizzare le diverse valute utilizzate.',
                                FRS = 'Affichez les différentes devises dans lesquelles vous faites des affaires.';
                }
                action(Employees)
                {
                    CaptionML = ENU = 'Employees',
                                HUN = 'Felszólítások',
                                DES = 'Mitarbeiter',
                                ITS = 'Impiegati',
                                FRS = 'Salariés';
                    RunObject = Page "Employee List";
                }
                action("VAT Statements")
                {
                    CaptionML = ENU = 'VAT Statements',
                                HUN = 'Bankszámla-egyeztetések',
                                DES = 'MWST.-Abrechnung',
                                ITS = 'Dichiarazioni IVA',
                                FRS = 'Déclarations de TVA';
                    RunObject = Page "VAT Statement Names";
                }
                action("Intrastat Journals")
                {
                    CaptionML = ENU = 'Intrastat Journals',
                                HUN = 'Elküldött felszólítások',
                                DES = 'Intrastat Erf.-Journal',
                                ITS = 'Registrazioni Intrastat',
                                FRS = 'Feuilles intracomm.';
                    RunObject = Page "Intrastat Jnl. Batches";
                }
            }
            group(Sales)
            {
                CaptionML = ENU = 'Sales',
                            HUN = 'Eladás',
                            DES = 'Verkauf',
                            ITS = 'Vendite',
                            FRS = 'Ventes';
                Image = Sales;
                ToolTipML = ENU = 'Make quotes, orders, and credit memos. See customers and transaction history.',
                            DES = 'Erstellt Anfragen, Aufträge und Gutschriften. Zeigt die Debitoren- und Transaktionshistorie an.',
                            ITS = 'Creare offerte, ordini e note di credito. Esaminare clienti e storico delle transazioni.',
                            FRS = 'Faites des devis, des commandes et des avoirs. Consultez l''historique des clients et des transactions.';
                action(Sales_CustomerList)
                {
                    ApplicationArea = Basic, Suite;
                    CaptionML = ENU = 'Customers',
                                HUN = 'Bankszámlakivonatok',
                                DES = 'Debitoren',
                                ITS = 'Clienti',
                                FRS = 'Clients';
                    RunObject = Page "Customer List";
                    ToolTipML = ENU = 'Open the list of customers.',
                                DES = 'Öffnet die Liste der Debitoren.',
                                ITS = 'Aprire l''elenco dei clienti.',
                                FRS = 'Ouvrez la liste des clients.';
                }
                action("Sales Quotes")
                {
                    ApplicationArea = Basic, Suite;
                    CaptionML = ENU = 'Sales Quotes',
                                HUN = 'Eladási jóváírások',
                                DES = 'Verkaufsofferten',
                                ITS = 'Offerte vendita',
                                FRS = 'Devis';
                    RunObject = Page "Sales Quotes";
                    ToolTipML = ENU = 'Open the list of sales quotes where you offer items or services to customers.',
                                DES = 'Öffnet die Liste der Verkaufsofferten, in der Sie Debitoren Artikel oder Dienste anbieten.',
                                ITS = 'Aprire l''elenco delle offerte in cui si offrono articoli o servizi ai clienti.',
                                FRS = 'Ouvrez la liste des devis oŚ vous proposez des articles ou des services aux clients.';
                }
                action("Sales Orders")
                {
                    ApplicationArea = Basic, Suite;
                    CaptionML = ENU = 'Sales Orders',
                                HUN = 'Eladási rendelések',
                                DES = 'Verkaufsaufträge',
                                ITS = 'Ordini vendita',
                                FRS = 'Commandes vente';
                    RunObject = Page "Sales Order List";
                    ToolTipML = ENU = 'Open the list of sales orders where you can sell items and services.',
                                DES = 'Öffnet die Liste der Verkaufsaufträge, in der Sie Artikel und Dienste verkaufen können.',
                                ITS = 'Aprire l''elenco degli ordini di vendita in cui Ő possibile vendere articoli e servizi.',
                                FRS = 'Ouvrez la liste des commandes vente oŚ vous pouvez vendre des articles et des services.';
                }
                action("Sales Invoices")
                {
                    ApplicationArea = Basic, Suite;
                    CaptionML = ENU = 'Sales Invoices',
                                HUN = 'Könyvelt eladási jóváírások',
                                DES = 'Verkaufsrechnungen',
                                ITS = 'Fatture vendite',
                                FRS = 'Factures vente';
                    RunObject = Page "Sales Invoice List";
                    ToolTipML = ENU = 'Open the list of sales invoices where you can invoice items or services.',
                                DES = 'Öffnet die Liste der Verkaufsrechnungen, in der Sie Artikel oder Dienste fakturieren können.',
                                ITS = 'Aprire l''elenco delle fatture di vendita in cui Ő possibile fatturare articoli o servizi.',
                                FRS = 'Ouvrez la liste des factures vente oŚ vous pouvez facturer des articles ou des services.';
                }
                action("Sales Credit Memos")
                {
                    ApplicationArea = Basic, Suite;
                    CaptionML = ENU = 'Sales Credit Memos',
                                HUN = 'Pénznemek',
                                DES = 'Verkaufsgutschriften',
                                ITS = 'Note credito vendita',
                                FRS = 'Avoirs vente';
                    RunObject = Page "Sales Credit Memos";
                    ToolTipML = ENU = 'Open the list of sales credit memos where you can revert posted sales invoices.',
                                DES = 'Öffnet die Liste der Verkaufsgutschriften, in der Sie gebuchte Verkaufsrechnungen rückgängig machen können.',
                                ITS = 'Aprire l''elenco delle note di credito di vendita in cui Ő possibile annullare le fatture di vendita registrate.',
                                FRS = 'Ouvrez la liste des avoirs vente oŚ vous pouvez annuler les factures vente validées.';
                }
                action(Reminders)
                {
                    CaptionML = ENU = 'Reminders',
                                HUN = 'Számlatükör',
                                DES = 'Mahnungen',
                                ITS = 'Solleciti',
                                FRS = 'Relances';
                    Image = Reminder;
                    RunObject = Page "Reminder List";
                }
                action("Finance Charge Memos")
                {
                    CaptionML = ENU = 'Finance Charge Memos',
                                HUN = 'Áfajelentés',
                                DES = 'Zinsrechnungen',
                                ITS = 'Note add. interessi',
                                FRS = 'Factures d''intérłts';
                    Image = FinChargeMemo;
                    RunObject = Page "Finance Charge Memo List";
                }
                action("Posted Sales Invoices")
                {
                    ApplicationArea = Basic, Suite;
                    CaptionML = ENU = 'Posted Sales Invoices',
                                HUN = 'Könyvelt beszerzési számlák',
                                DES = 'Geb. Verkaufsrechnungen',
                                ITS = 'Fatture vendita registrate',
                                FRS = 'Factures vente enregistrées';
                    RunObject = Page "Posted Sales Invoices";
                    ToolTipML = ENU = 'View the posted sales invoices.',
                                DES = 'Zeigt die gebuchten Verkaufsrechnungen an.',
                                ITS = 'Visualizzare le fatture di vendita registrate.',
                                FRS = 'Affichez les factures vente validées.';
                }
                action("Posted Sales Credit Memos")
                {
                    ApplicationArea = Basic, Suite;
                    CaptionML = ENU = 'Posted Sales Credit Memos',
                                HUN = 'Közvetlen beszedések',
                                DES = 'Geb. Verkaufsgutschriften',
                                ITS = 'Note credito vendita registrate',
                                FRS = 'Avoirs vente enregistrés';
                    RunObject = Page "Posted Sales Credit Memos";
                    ToolTipML = ENU = 'View the posted sales credit memos.',
                                DES = 'Zeigt die gebuchten Verkaufsgutschriften an.',
                                ITS = 'Visualizzare le note di credito di vendita registrate.',
                                FRS = 'Affichez les avoirs vente validés.';
                }
                action("Issued Reminders")
                {
                    CaptionML = ENU = 'Issued Reminders',
                                HUN = 'Befizetési naplók',
                                DES = 'Registrierte Mahnungen',
                                ITS = 'Solleciti emessi',
                                FRS = 'Relances émises';
                    Image = OrderReminder;
                    RunObject = Page "Issued Reminder List";
                }
                action("Issued Finance Charge Memos")
                {
                    CaptionML = ENU = 'Issued Finance Charge Memos',
                                HUN = 'Beszerzési számlák',
                                DES = 'Registrierte Zinsrechnungen',
                                ITS = 'Note addebito interessi emesse',
                                FRS = 'Factures d''intérłts émises';
                    Image = PostedMemo;
                    RunObject = Page "Issued Fin. Charge Memo List";
                }
            }
            group(Purchasing)
            {
                CaptionML = ENU = 'Purchasing',
                            HUN = 'Beszerzés',
                            DES = 'Einkauf',
                            ITS = 'Acquisti',
                            FRS = 'Procédure d''achat';
                Image = AdministrationSalesPurchases;
                ToolTipML = ENU = 'Manage purchase invoices and credit memos. Maintain vendors and their history.',
                            DES = 'Verwaltet Einkaufsrechnungen und Gutschriften. Verwaltet Kreditoren und deren Verlauf.',
                            ITS = 'Gestire le fatture di acquisto e le note di credito. Gestire i fornitori e il relativo storico.',
                            FRS = 'Gérez les factures achat et les avoirs. Conservez les fournisseurs et leur historique.';
                action(Purchase_VendorList)
                {
                    ApplicationArea = Basic, Suite;
                    CaptionML = ENU = 'Vendors',
                                HUN = 'Kifizetési naplók',
                                DES = 'Kreditoren',
                                ITS = 'Fornitori',
                                FRS = 'Fournisseurs';
                    RunObject = Page "Vendor List";
                    ToolTipML = ENU = 'View a list of vendors that you can buy items from.',
                                DES = 'Zeigt eine Liste von Kreditoren an, von denen Sie Artikel kaufen können.',
                                ITS = 'Visualizzare l''elenco dei fornitori da cui Ő possibile acquistare articoli.',
                                FRS = 'Affichez la liste des fournisseurs auprŐs desquels vous pouvez acheter des articles.';
                }
                action("Incoming Documents")
                {
                    ApplicationArea = Basic, Suite;
                    CaptionML = ENU = 'Incoming Documents',
                                HUN = 'Áfajelentések',
                                DES = 'Eingehende Belege',
                                ITS = 'Documenti in entrata',
                                FRS = 'Documents entrants';
                    Gesture = None;
                    RunObject = Page "Incoming Documents";
                    ToolTipML = ENU = 'Specifies the Incoming Documents',
                                DES = 'Gibt die eingehenden Belege an.',
                                ITS = 'Specifica i documenti in entrata',
                                FRS = 'Spécifie les documents entrants';
                }
                action("<Page Purchase Orders>")
                {
                    ApplicationArea = Suite;
                    CaptionML = ENU = 'Purchase Orders',
                                HUN = 'Beszerzési rendelések',
                                DES = 'Bestellungen',
                                ITS = 'Ordini acquisto',
                                FRS = 'Commandes achat';
                    RunObject = Page "Purchase Order List";
                    ToolTipML = ENU = 'Open the list of purchase orders where you can purchase items or services.',
                                DES = 'Öffnet die Liste der Bestellungen, in der Sie Artikel oder Dienste kaufen können.',
                                ITS = 'Aprire l''elenco degli ordini di vendita in cui Ő possibile acquistare articoli o servizi.',
                                FRS = 'Ouvrez la liste des commandes achat oŚ vous pouvez acheter des articles ou des services.';
                }
                action("<Page Purchase Invoices>")
                {
                    ApplicationArea = Basic, Suite;
                    CaptionML = ENU = 'Purchase Invoices',
                                HUN = 'Eladási számlák',
                                DES = 'Einkaufsrechnungen',
                                ITS = 'Fatture acquisto',
                                FRS = 'Factures achat';
                    RunObject = Page "Purchase Invoices";
                    ToolTipML = ENU = 'Open the list of purchase invoices where you can purchase items or services.',
                                DES = 'Öffnet die Liste der Einkaufsrechnungen, in der Sie Artikel oder Dienste kaufen können.',
                                ITS = 'Aprire l''elenco delle fatture di vendita in cui Ő possibile acquistare articoli o servizi.',
                                FRS = 'Ouvrez la liste des factures achat oŚ vous pouvez acheter des articles ou des services.';
                }
                action("<Page Posted Purchase Invoices>")
                {
                    ApplicationArea = Basic, Suite;
                    CaptionML = ENU = 'Posted Purchase Invoices',
                                HUN = 'Beszerzési jóváírások',
                                DES = 'Geb. Einkaufsrechnungen',
                                ITS = 'Fatture acquisto registrate',
                                FRS = 'Factures achat enregistrées';
                    RunObject = Page "Posted Purchase Invoices";
                    ToolTipML = ENU = 'View the posted purchase invoices.',
                                DES = 'Zeigt die gebuchten Einkaufsrechnungen an.',
                                ITS = 'Visualizzare le fatture di acquisto registrate.',
                                FRS = 'Affichez les factures achat enregistrées.';
                }
                action("<Page Purchase Credit Memos>")
                {
                    ApplicationArea = Basic, Suite;
                    CaptionML = ENU = 'Purchase Credit Memos',
                                HUN = 'Könyvelt eladási számlák',
                                DES = 'Einkaufsgutschriften',
                                ITS = 'Note credito acquisto',
                                FRS = 'Avoirs achat';
                    RunObject = Page "Purchase Credit Memos";
                    ToolTipML = ENU = 'Open the list of purchase credit memos where you can revert posted purchase invoices.',
                                DES = 'Öffnet die Liste der Einkaufsgutschriften, in der Sie gebuchte Einkaufsrechnungen rückgängig machen können.',
                                ITS = 'Aprire l''elenco delle note di credito di vendita in cui Ő possibile annullare le fatture di acquisto registrate.',
                                FRS = 'Ouvrez la liste des avoirs achat oŚ vous pouvez annuler les factures achat validées.';
                }
                action("<Page Posted Purchase Credit Memos>")
                {
                    ApplicationArea = Basic, Suite;
                    CaptionML = ENU = 'Posted Purchase Credit Memos',
                                HUN = 'Könyvelt eladási számlák',
                                DES = 'Geb. Einkaufsgutschriften',
                                ITS = 'Note credito acquisto registrate',
                                FRS = 'Avoirs achat enregistrés';
                    RunObject = Page "Posted Purchase Credit Memos";
                    ToolTipML = ENU = 'View the posted purchase credit memos.',
                                DES = 'Zeigt die gebuchten Einkaufsgutschriften an.',
                                ITS = 'Visualizzare le note di credito di acquisto registrate.',
                                FRS = 'Affichez les avoirs achat enregistrés.';
                }
                action("<Page Posted Purchase Receipts>")
                {
                    ApplicationArea = Suite;
                    CaptionML = ENU = 'Posted Purchase Receipts',
                                HUN = 'Könyvelt beszerzési bevétjegyek',
                                DES = 'Geb. Einkaufslieferungen',
                                ITS = 'Carichi acquisti registrati',
                                FRS = 'Réceptions achat enregistrées';
                    RunObject = Page "Posted Purchase Receipts";
                    ToolTipML = ENU = 'View the posted purchase receipts.',
                                DES = 'Zeigt die gebuchten Einkaufslieferungen an.',
                                ITS = 'Visualizzare i carichi di acquisti registrati.',
                                FRS = 'Affichez les réceptions achat enregistrées.';
                }
            }
            group(Approvals)
            {
                CaptionML = ENU = 'Approvals',
                            HUN = 'Jóváhagyások',
                            DES = 'Genehmigungen',
                            ITS = 'Approvazioni',
                            FRS = 'Approbations';
                ToolTipML = ENU = 'Approve requests made by other users.',
                            DES = 'Genehmigt Anfragen von anderen Benutzern.',
                            ITS = 'Approvare le richieste di altri utenti.',
                            FRS = 'Approuvez les demandes faites par d''autres utilisateurs.';
                action("Requests to Approve")
                {
                    ApplicationArea = Suite;
                    CaptionML = ENU = 'Requests to Approve',
                                HUN = 'Cash Flow kézi bevételek',
                                DES = 'Zu genehmigende Anforderungen',
                                ITS = 'Richieste da approvare',
                                FRS = 'Demandes ů approuver';
                    Image = Approvals;
                    RunObject = Page "Requests to Approve";
                    ToolTipML = ENU = 'View the number of approval requests that require your approval.',
                                DES = 'Zeigt die Anzahl an Genehmigungsanforderungen an, die Ihre Genehmigung erfordern.',
                                ITS = 'Visualizzare il numero di richieste che richiedono l''approvazione.',
                                FRS = 'Affichez le nombre de demandes d''approbation que vous devez approuver.';
                }
            }
            group("Advanced Finance")
            {
                CaptionML = ENU = 'Advanced Finance',
                            HUN = 'Pénzügy',
                            DES = 'Erweiterte Finanzen',
                            ITS = 'Contabilitů avanzata',
                            FRS = 'Finance avancée';
                Image = AnalysisView;
                ToolTipML = ENU = 'Manage budgets, cash flows, fixed assets, VAT, and analyze sales.',
                            DES = 'Verwaltet Budgets, Cashflows, Anlagen, MWST und analysiert Verkäufe.',
                            ITS = 'Gestire i budget, i flussi di cassa, i cespiti, l''IVA e analizzare le vendite.',
                            FRS = 'Gérez les budgets, la trésorerie, les immobilisations, la TVA, et analysez les ventes.';
                action("G/L Budgets")
                {
                    ApplicationArea = Suite;
                    CaptionML = ENU = 'G/L Budgets',
                                HUN = 'Főkönyvi tervek',
                                DES = 'Fibu-Budgets',
                                ITS = 'Budget C/G',
                                FRS = 'Budgets';
                    RunObject = Page "G/L Budget Names";
                    ToolTipML = ENU = 'View summary information about the amount budgeted for each general ledger account in different time periods.',
                                DES = 'Zeigt die zusammengefassten Informationen über den Betrag an, der für jedes Sachkonto in verschiedenen Zeitperioden geplant ist.',
                                ITS = 'Visualizzare le informazioni di riepilogo relative all''importo previsto per ciascun conto di contabilitů generale in diversi periodi di tempo.',
                                FRS = 'Affichez des informations récapitulatives concernant le montant budgété pour chaque compte général de différentes périodes.';
                }
                action("Fixed Assets")
                {
                    ApplicationArea = FixedAssets;
                    CaptionML = ENU = 'Fixed Assets',
                                HUN = 'Főkönyvi tervek',
                                DES = 'Anlagen',
                                ITS = 'Cespiti',
                                FRS = 'Immobilisations';
                    RunObject = Page "Fixed Asset List";
                    ToolTipML = ENU = 'Manage periodic depreciation of your machinery or machines, keep track of your maintenance costs, manage insurance policies related to fixed assets, and monitor fixed asset statistics.',
                                DES = 'Verwaltet die periodischen Abschreibungen Ihrer Maschinen, erfasst Ihre Wartungskosten, verwaltet Versicherungspolicen im Zusammenhang mit Anlagen und überwacht Anlagenstatistiken.',
                                ITS = 'Gestire l''ammortamento periodico dei macchinari o dei computer, tenere traccia dei costi di manutenzione, gestire polizze assicurative relative ai cespiti e monitorare le statistiche dei cespiti.',
                                FRS = 'Gérez l''amortissement périodique de vos machines, assurez le suivi de vos coľts de maintenance, gérez les polices d''assurance associées aux immobilisations et surveillez les statistiques sur les immobilisations.';
                }
                action("Sales Analysis Reports")
                {
                    CaptionML = ENU = 'Sales Analysis Reports',
                                HUN = 'Beszerzéselemzési jelentések',
                                DES = 'Verkaufsanalyseberichte',
                                ITS = 'Report analisi vendite',
                                FRS = 'Rapports d''analyse vente';
                    RunObject = Page "Analysis Report Sale";
                    ToolTipML = ENU = 'Analyze the dynamics of your sales according to key sales performance indicators that you select, for example, sales turnover in both amounts and quantities, contribution margin, or progress of actual sales against the budget. You can also use the report to analyze your average sales prices and evaluate the sales performance of your sales force.',
                                DES = 'Analysiert die Entwicklung der Verkäufe anhand der ausgewählten Schlüsselindikatoren für die Verkaufsperformance, beispielsweise den Verkaufsumsatz in Beträgen und Mengen, die Beitragsspanne oder den Status der aktuellen Verkäufe gegenüber dem Budget. Sie können den Bericht auch verwenden, um durchschnittliche VK-Preise zu analysieren und die Verkaufsperformance der Verkaufsabteilung zu bewerten.',
                                ITS = 'Analizzare la dinamica delle vendite in base agli indicatori di prestazioni chiave delle vendite, quali ad esempio turnover di vendita sia in importi che in quantitů, margine di contribuzione, stato delle vendite effettive confrontato con il budget. Il report puĽ inoltre essere utilizzato per analizzare i prezzi di vendita medi e per valutare le prestazioni della forza di vendita.',
                                FRS = 'Analysez la dynamique de vos ventes en fonction des indicateurs de performances des ventes clés que vous sélectionnez, par exemple le volume des ventes en matiŐre de montant et de quantité, la marge contributive ou l''évolution des ventes réelles par rapport au budget. Ils peuvent également servir ů analyser vos prix de vente moyens et ů évaluer les performances de vos commerciaux.';
                }
                action("Purchase Analysis Reports")
                {
                    CaptionML = ENU = 'Purchase Analysis Reports',
                                HUN = 'Eladáselemzési jelentések',
                                DES = 'Einkaufsanalyseberichte',
                                ITS = 'Report analisi acquisti',
                                FRS = 'Rapports d''analyse achat';
                    RunObject = Page "Analysis Report Purchase";
                    ToolTipML = ENU = 'Analyze the dynamics of your purchase volumes. You can also use the report to analyze your vendors'' performance and purchase prices.',
                                DES = 'Analysiert die Entwicklung Ihrer Einkaufsvolumina. Ausserdem können Sie mit diesen Berichten die Performance von Kreditoren und die Einkaufspreise bewerten.',
                                ITS = 'Analizzare la dinamica dei volumi di acquisto. Il report puĽ inoltre essere utilizzato per analizzare le prestazioni dei fornitori e i prezzi di acquisto.',
                                FRS = 'Analysez la dynamique des volumes d''achat. Ils peuvent également servir ů analyser vos prix d''achat et ů évaluer les performances de vos fournisseurs.';
                }
                action("Inventory Analysis Reports")
                {
                    CaptionML = ENU = 'Inventory Analysis Reports',
                                HUN = 'Főkönyvi kimutatások',
                                DES = 'Lageranalyseberichte',
                                ITS = 'Report analisi magazzino',
                                FRS = 'Rapports d''analyse stock';
                    RunObject = Page "Analysis Report Inventory";
                    ToolTipML = ENU = 'Analyze the dynamics of your inventory according to key performance indicators that you select, for example inventory turnover. You can also use the report to analyze your inventory costs, in terms of direct and indirect costs, as well as the value and quantities of your different types of inventory.',
                                DES = 'Analysiert die Entwicklung Ihres Lagerbestands entsprechend den von Ihnen gewählten Schlüsselleistungsindikatoren, beispielsweise Lagerbestandsumsatz. Sie können mit Hilfe des Berichts aber auch Ihre Lagerbestandskosten in Bezug auf Kosten und Kosten in % sowie den Wert und die Mengen der unterschiedlichen Lagerbestandstypen analysieren.',
                                ITS = 'Analizzare la dinamica del magazzino in base agli indicatori di prestazioni chiave selezionati, ad esempio il turnover di magazzino. ď inoltre possibile utilizzare il report per analizzare i costi di magazzino, in termini di costi diretti e indiretti, oltre al valore e alle quantitů relative ai diversi tipi di magazzino.',
                                FRS = 'Analysez la dynamique de vos stocks en fonction d''indicateurs de performance clés sélectionnés, comme la rotation des stocks. Vous pouvez également les utiliser afin d''analyser les coľts ajustés, en termes de coľts directs et indirects, ainsi que la valeur et les quantités des différents types de stock (matiŐres premiŐres, produits finis et en-cours).';
                }
                action("VAT Reports")
                {
                    CaptionML = ENU = 'VAT Reports',
                                HUN = 'Elemzés',
                                DES = 'MWST.-Berichte',
                                ITS = 'Report IVA',
                                FRS = 'États TVA';
                    RunObject = Page "VAT Report List";
                }
                action("Cash Flow Forecasts")
                {
                    CaptionML = ENU = 'Cash Flow Forecasts',
                                HUN = 'Hozzá nem rendelt',
                                DES = 'Cashflowplanungen',
                                ITS = 'Previsioni flusso di cassa',
                                FRS = 'Prévisions de la trésorerie';
                    RunObject = Page "Cash Flow Forecast List";
                }
                action("Chart of Cash Flow Accounts")
                {
                    CaptionML = ENU = 'Chart of Cash Flow Accounts',
                                HUN = 'Projektek',
                                DES = 'Cashflow-Kontenplan',
                                ITS = 'Piano dei conti di cassa',
                                FRS = 'Plan comptable de trésorerie';
                    RunObject = Page "Chart of Cash Flow Accounts";
                }
                action("Cash Flow Manual Revenues")
                {
                    CaptionML = ENU = 'Cash Flow Manual Revenues',
                                HUN = 'Folyamatban lévő eladási ajánlatok',
                                DES = 'Neutrale Cashfloweinnahmen',
                                ITS = 'Ricavi generici di cassa',
                                FRS = 'Revenus manuels de trésorerie';
                    RunObject = Page "Cash Flow Manual Revenues";
                }
                action("Cash Flow Manual Expenses")
                {
                    CaptionML = ENU = 'Cash Flow Manual Expenses',
                                HUN = 'Alkalmazottak',
                                DES = 'Neutrale Cashflowausgaben',
                                ITS = 'Spese generiche di cassa',
                                FRS = 'Dépenses manuelles de trésorerie';
                    RunObject = Page "Cash Flow Manual Expenses";
                }
            }
            group("Self-Service")
            {
                CaptionML = ENU = 'Self-Service',
                            HUN = 'Önkiszolgáló funkciók',
                            DES = 'Self-Service',
                            ITS = 'Self-service',
                            FRS = 'Libre-service';
                Image = HumanResources;
                ToolTipML = ENU = 'Manage your time sheets and assignments.',
                            DES = 'Verwalten Sie Ihre Arbeitszeittabellen und Zuweisungen.',
                            ITS = 'Gestire i fogli presenze e le assegnazioni.',
                            FRS = 'Gérez vos feuilles de temps et affectations.';
                action("Time Sheets")
                {
                    ApplicationArea = Suite;
                    CaptionML = ENU = 'Time Sheets',
                                HUN = 'Munkaidő-kimutatások',
                                DES = 'Arbeitszeittabellen',
                                ITS = 'Fogli presenze',
                                FRS = 'Feuilles de temps';
                    RunObject = Page "Time Sheet List";
                    ToolTipML = ENU = 'View all time sheets.',
                                DES = 'Zeigt alle Arbeitszeittabellen an.',
                                ITS = 'Visualizza tutti i fogli presenze.',
                                FRS = 'Affichez toutes les feuilles de temps.';
                }
            }
        }
    }
}

