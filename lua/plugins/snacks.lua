return {
    "folke/snacks.nvim",
    priority = 1000,
    lazy = false,

    opts = {
        -- Désactive les optimisations automatiques pour les très gros fichiers.
        bigfile = { enabled = false },

        -- Affiche un écran d'accueil au démarrage de Neovim.
        dashboard = { enabled = true },

        -- Désactive l'explorateur de fichiers intégré de Snacks pour éviter le conflit avec Neo-tree.
        explorer = { enabled = false },

        -- Affiche des guides d'indentation pour mieux visualiser la structure du code.
        indent = { enabled = true },

        -- Améliore les fenêtres de saisie utilisées par certains plugins et commandes.
        input = { enabled = true },

        -- Active le système de pickers fuzzy pour rechercher fichiers, buffers et autres éléments.
        picker = { enabled = true },

        -- Améliore l'affichage des notifications dans Neovim.
        notifier = { enabled = true },

        -- Accélère l'ouverture directe de fichiers au lancement de Neovim.
        quickfile = { enabled = true },

        -- Met en évidence le scope courant, par exemple le bloc logique autour du curseur.
        scope = { enabled = true },

        -- Améliore le comportement du défilement dans les buffers.
        scroll = { enabled = true },

        -- Améliore la colonne d'état latérale, notamment pour les numéros de ligne et les folds.
        statuscolumn = { enabled = true },

        -- Met en évidence les autres occurrences du mot sous le curseur.
        words = { enabled = true },

        -- Désactive le terminal intégré fourni par Snacks.
        terminal = { enabled = false },

        -- Désactive les toggles utilitaires intégrés de Snacks.
        toggle = { enabled = false },

        -- Désactive les helpers de gestion de fenêtres fournis par Snacks.
        win = { enabled = false },
    },
}
