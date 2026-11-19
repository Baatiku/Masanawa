-- The admin and Gemini Live Worker support all 30 provider prebuilt voices.
-- The earlier CHECK only permitted the first eight, silently undermining
-- persistence when an administrator selected Algenib, Algieba, Sulafat, etc.
ALTER TABLE security.whatsapp_assistants
  DROP CONSTRAINT IF EXISTS whatsapp_assistants_live_voice_name_check;

ALTER TABLE security.whatsapp_assistants
  ADD CONSTRAINT whatsapp_assistants_live_voice_name_check CHECK(live_voice_name IN (
    'Zephyr','Puck','Charon','Kore','Fenrir','Leda','Orus','Aoede',
    'Callirrhoe','Autonoe','Enceladus','Iapetus','Umbriel','Algieba',
    'Despina','Erinome','Algenib','Rasalgethi','Laomedeia','Achernar',
    'Alnilam','Schedar','Gacrux','Pulcherrima','Achird','Zubenelgenubi',
    'Vindemiatrix','Sadachbia','Sadaltager','Sulafat'
  ));
