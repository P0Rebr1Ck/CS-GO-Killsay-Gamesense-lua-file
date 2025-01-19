local sentences = {"ｏｗｎｅｄ ｂｙ ｇｏｄ ｓｏｎ", "-𝟷 𝚙𝚊𝚜𝚝𝚊 𝚞𝚜𝚎𝚛 :(", "𝘪𝘲 𝘵𝘦𝘴𝘵 𝘧𝘢𝘪𝘭𝘦𝘥 !", "ᴛʜɪs ꜰᴜᴄᴋ!ɴɢ sʜ!ᴛ ᴄ00ᴅᴇᴅ ʙʏ ᴘ0ʀ3ʙʀ!ᴄᴋ"}

local function on_player_death(event)
    local local_player = entity.get_local_player()
    local attacker = client.userid_to_entindex(event.attacker)

    if local_player == nil or attacker == nil then
        return
    end

    if attacker == local_player then
        -- Выбираем случайное сообщение из списка
        local message = sentences[math.random(#sentences)]
        -- Отправляем выбранное сообщение в чат
        client.exec("say " .. message)
    end
end

-- Подписываемся на событие "player_death"
client.set_event_callback("player_death", on_player_death)

-- Выводим сообщение в консоль для подтверждения загрузки скрипта
print("KillSay Script Loaded")