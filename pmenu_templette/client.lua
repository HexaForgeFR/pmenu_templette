
local ExempleMenu = {
    Base = {
        Header = {"commonmenu", "interaction_bgd"},
        Color = {0, 128, 255},
        HeaderColor = {255, 255, 255},
        Title = "Menu Exemple"
    },
    Data = {
        currentMenu = "Menu Principal"
    },
    Events = {
        onSelected = function(self, _, btn, PMenu, menuData, currentButton, currentBtn, currentSlt, result, slide)
            PlaySoundFrontend(-1, "SELECT", "HUD_FRONTEND_DEFAULT_SOUNDSET", 1)

            if btn.name == "Option 1" then
                ESX.ShowNotification("Tu as sélectionné Option 1")
            elseif btn.name == "Option 2" then
                ESX.ShowNotification("Tu as sélectionné Option 2")
            end
        end
    },
    Menu = {
        ["Menu Principal"] = {
            b = {
                {name = "Option 1", ask = "→", askX = true},
               
            }
        }
    }
}

RegisterKeyMapping("open_exemple_menu", "Ouvrir le menu Exemple", "keyboard", "F2")

RegisterCommand("open_exemple_menu", function()
    CreateMenu(ExempleMenu)
end, false)
