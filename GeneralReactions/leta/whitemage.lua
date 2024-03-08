local tbl = 
{
	
	{
		data = 
		{
			name = "--Misc",
			uuid = "e1db977f-aaba-a9ee-860b-cca2824fd9d8",
			version = 2,
		},
		inheritedIndex = 22,
		inheritedObjectUUID = "00299d60-9aca-4567-8079-058341fcfd33",
		inheritedOverwrites = 
		{
		},
	},
	
	{
		data = 
		{
			name = "OnDeath Reaction",
			uuid = "00070a08-e995-5923-a622-c8aca0e79d8a",
			version = 2,
		},
		inheritedIndex = 23,
		inheritedObjectUUID = "5b15d2e7-a953-542c-b3c3-945c374dd5d1",
		inheritedOverwrites = 
		{
		},
	},
	
	{
		data = 
		{
			name = "OnWipe Reaction",
			uuid = "dd034420-a59a-0b8a-a70d-473f16c84613",
			version = 2,
		},
		inheritedIndex = 24,
		inheritedObjectUUID = "17e714bc-2572-57a6-a498-a398a8e274c1",
		inheritedOverwrites = 
		{
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "d(\"[AnyoneCore] Countdown started - engaging Prepull Helper.\")\nAnyoneCore.Data.countdownTime = Now()\nAnyoneCore.Data.countdownDuration = tonumber(eventArgs.time)\ndata.startCombat = gStartCombat\ngStartCombat = false\nAnyoneCore.JobCheck()\nif AnyoneCore.Settings.PrepullHelper.twominpot == true and ACR_RikuWHM2_Potion == true then\n    AnyoneCore.Data.PotsEnabled = true\n    ACR_RikuWHM2_Potion = false\n    AnyoneCore.Toggle(\"pots\", false, (30000 + eventArgs.time))\nend\nlocal ac = ActionList:Get(1, 119)\ndata.castTime = ac.casttime\nself.used = true",
						conditions = 
						{
							
							{
								"4a7db5d9-954b-bac7-9064-bbd7166b5052",
								true,
							},
							
							{
								"e8de0f77-e6e5-93fb-9d52-61c81a36ac84",
								true,
							},
						},
						name = "Set Variables",
						uuid = "8ceba036-70b3-14a9-8147-e299a38d5ccd",
						version = 2,
					},
				},
				
				{
					data = 
					{
						aType = "Misc",
						conditions = 
						{
							
							{
								"4a7db5d9-954b-bac7-9064-bbd7166b5052",
								true,
							},
							
							{
								"e8de0f77-e6e5-93fb-9d52-61c81a36ac84",
								true,
							},
							
							{
								"9800e5e3-62bd-2bae-80e6-d383ad124aec",
								true,
							},
						},
						name = "Target Nearest",
						setTarget = true,
						targetType = "Enemy",
						uuid = "ad3c6f9c-68b3-dd49-844f-28b4f9aca282",
						version = 2,
					},
				},
				
				{
					data = 
					{
						aType = "Misc",
						conditions = 
						{
							
							{
								"4a7db5d9-954b-bac7-9064-bbd7166b5052",
								true,
							},
							
							{
								"e8de0f77-e6e5-93fb-9d52-61c81a36ac84",
								true,
							},
							
							{
								"4d99bb4c-c4e3-ffa8-8ef9-3986149fe367",
								true,
							},
							
							{
								"e6471513-bfa1-e742-b9b1-e00178af95b2",
								true,
							},
						},
						ignoreWeaveRules = true,
						potType = 3,
						usePot = true,
						uuid = "d866e92f-6633-4656-8b99-fbd68459e767",
						version = 2,
					},
				},
				
				{
					data = 
					{
						actionID = 119,
						atomicPriority = true,
						conditions = 
						{
							
							{
								"4a7db5d9-954b-bac7-9064-bbd7166b5052",
								true,
							},
							
							{
								"e8de0f77-e6e5-93fb-9d52-61c81a36ac84",
								true,
							},
							
							{
								"de7d078f-d3ad-7b91-8f56-2780e2a467b7",
								true,
							},
						},
						ignoreWeaveRules = true,
						targetType = "Current Target",
						uuid = "c57036ed-3b36-a78b-898e-32119d4b1446",
						version = 2,
					},
				},
				
				{
					data = 
					{
						aType = "Misc",
						conditions = 
						{
							
							{
								"4a7db5d9-954b-bac7-9064-bbd7166b5052",
								true,
							},
							
							{
								"e8de0f77-e6e5-93fb-9d52-61c81a36ac84",
								true,
							},
							
							{
								"f29b914f-cece-d670-b855-f37856f50c03",
								true,
							},
						},
						name = "Target Nearest",
						setTarget = true,
						targetType = "Enemy",
						uuid = "d74a784f-c225-fd1e-bd26-938e349d5f8a",
						version = 2,
					},
				},
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "gStartCombat = true\nself.used = true",
						conditions = 
						{
							
							{
								"4a7db5d9-954b-bac7-9064-bbd7166b5052",
								true,
							},
							
							{
								"e8de0f77-e6e5-93fb-9d52-61c81a36ac84",
								true,
							},
							
							{
								"f29b914f-cece-d670-b855-f37856f50c03",
								true,
							},
						},
						name = "Engage",
						uuid = "d763d3f0-694b-230a-853e-18910819588e",
						version = 2,
					},
				},
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "d(\"[AnyoneCore] Countdown finished, engaging boss.\")\ngStartCombat = data.startCombat\nAnyoneCore.Data.countdownTime = nil\nAnyoneCore.Data.countdownDuration = nil\nself.used = true",
						conditions = 
						{
							
							{
								"4a7db5d9-954b-bac7-9064-bbd7166b5052",
								true,
							},
							
							{
								"e8de0f77-e6e5-93fb-9d52-61c81a36ac84",
								true,
							},
							
							{
								"d880da65-e049-0e94-b956-f1df2e89d4ac",
								true,
							},
						},
						name = "End",
						uuid = "203d44e2-1376-992c-b272-b19fb620f602",
						version = 2,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return FFXIV_Common_BotRunning and AnyoneCore.Settings.PrepullHelper.enabled",
						name = "Check BotRunning",
						uuid = "4a7db5d9-954b-bac7-9064-bbd7166b5052",
						version = 2,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 13,
						dequeueIfLuaFalse = true,
						jobValue = "WHITEMAGE",
						name = "White Mage",
						uuid = "e8de0f77-e6e5-93fb-9d52-61c81a36ac84",
						version = 2,
					},
				},
				
				{
					data = 
					{
						category = "Event",
						comparator = 2,
						eventCountdownTime = 3,
						name = "Pot Timer",
						uuid = "4d99bb4c-c4e3-ffa8-8ef9-3986149fe367",
						version = 2,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return ACR_RikuWHM2_Potion == true",
						name = "Pot Enabled",
						uuid = "e6471513-bfa1-e742-b9b1-e00178af95b2",
						version = 2,
					},
				},
				
				{
					data = 
					{
						category = "Event",
						comparator = 2,
						eventCountdownTime = 2,
						name = "Target Timer",
						uuid = "9800e5e3-62bd-2bae-80e6-d383ad124aec",
						version = 2,
					},
					inheritedIndex = 5,
				},
				
				{
					data = 
					{
						category = "Lua",
						comparator = 2,
						conditionLua = "return (eventArgs.time*1000) - TimeSince(eventArgs.timeQueued) <= (data.castTime*1000)",
						eventCountdownTime = 1.5,
						name = "Glare Timer",
						uuid = "de7d078f-d3ad-7b91-8f56-2780e2a467b7",
						version = 2,
					},
				},
				
				{
					data = 
					{
						category = "Event",
						comparator = 2,
						eventCountdownTime = 0.5,
						name = "Engage Boss Timer",
						uuid = "f29b914f-cece-d670-b855-f37856f50c03",
						version = 2,
					},
				},
				
				{
					data = 
					{
						category = "Event",
						comparator = 2,
						name = "End Timer",
						uuid = "d880da65-e049-0e94-b956-f1df2e89d4ac",
						version = 2,
					},
				},
			},
			eventType = 16,
			name = "Prepull Helper",
			uuid = "56843b9f-36f8-b8ce-80b5-fc004877de18",
			version = 2,
		},
		inheritedIndex = 25,
	},
	
	{
		data = 
		{
			name = "--Duty Helper",
			uuid = "d1160378-3281-93a4-922e-6425a66ab2be",
			version = 2,
		},
		inheritedIndex = 26,
		inheritedObjectUUID = "3252e059-b557-925d-a580-d94313de83d4",
		inheritedOverwrites = 
		{
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Variable",
						actionID = 7432,
						conditions = 
						{
							
							{
								"ac66014a-7944-c91a-8d8b-98ed0a8adbb1",
								true,
							},
							
							{
								"0f531a28-dc57-d12a-aac6-79b8a7943d8f",
								true,
							},
							
							{
								"797c3e27-31a6-296a-92f5-3285385934b3",
								true,
							},
							
							{
								"91aefcfa-2a26-c1ef-8f32-d659a92898d7",
								true,
							},
						},
						fallthrough = true,
						gVar = "ACR_RikuWHM2_Healbar_DivineBenison",
						ignoreWeaveRules = true,
						targetType = "Main Tank",
						uuid = "27fc349e-0718-60ce-9174-218616c668f6",
						variableIsHover = true,
						variableTogglesType = 3,
						version = 2,
					},
				},
				
				{
					data = 
					{
						aType = "Variable",
						actionID = 25861,
						conditions = 
						{
							
							{
								"ac66014a-7944-c91a-8d8b-98ed0a8adbb1",
								true,
							},
							
							{
								"0f531a28-dc57-d12a-aac6-79b8a7943d8f",
								true,
							},
							
							{
								"797c3e27-31a6-296a-92f5-3285385934b3",
								true,
							},
							
							{
								"0171b500-4f08-4c71-a372-8e8dc5a84a7d",
								true,
							},
						},
						gVar = "ACR_RikuWHM2_Healbar_AquaveilMouse",
						ignoreWeaveRules = true,
						targetType = "Main Tank",
						uuid = "77119c1e-44eb-db17-8ff9-d8a9fef9eb11",
						variableIsHover = true,
						variableTogglesType = 3,
						version = 2,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return Leta.settings.Toggles[\"Heal\"].bool",
						dequeueIfLuaFalse = true,
						name = "Toggle Heal",
						uuid = "ac66014a-7944-c91a-8d8b-98ed0a8adbb1",
						version = 2,
					},
					inheritedIndex = 1,
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return Leta.settings.Toggles[\"Mitigation\"].bool",
						dequeueIfLuaFalse = true,
						name = "Toggle Mitigation",
						uuid = "0f531a28-dc57-d12a-aac6-79b8a7943d8f",
						version = 2,
					},
					inheritedIndex = 2,
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return AnyoneCore.AOEMitigation[eventArgs.spellID] == true",
						dequeueIfLuaFalse = true,
						uuid = "d0f564eb-0db4-c2c5-bb42-779c38eaa5ff",
						version = 2,
					},
				},
				
				{
					data = 
					{
						category = "Party",
						channelCheckTimeRemain = 5,
						channelCheckType = 3,
						comparator = 2,
						conditionType = 5,
						partyTargetType = "Event Entity",
						uuid = "992c3fa6-3a6e-d746-9e47-b4261cf79e54",
						version = 2,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return AnyoneCore.TankMitigation[eventArgs.spellID] == true",
						dequeueIfLuaFalse = true,
						uuid = "797c3e27-31a6-296a-92f5-3285385934b3",
						version = 2,
					},
				},
				
				{
					data = 
					{
						actionCDValue = 30,
						actionID = 7432,
						category = "Self",
						comparator = 2,
						conditionType = 4,
						name = "CD - Benison <= 30s",
						uuid = "91aefcfa-2a26-c1ef-8f32-d659a92898d7",
						version = 2,
					},
				},
				
				{
					data = 
					{
						actionID = 25861,
						category = "Self",
						comparator = 2,
						conditionType = 4,
						name = "CD - Aquaveil <= 0s",
						uuid = "0171b500-4f08-4c71-a372-8e8dc5a84a7d",
						version = 2,
					},
				},
			},
			eventType = 3,
			name = "Duty Helper",
			throttleTime = 1250,
			timeout = 3,
			uuid = "f6e8ed27-6412-4cc9-ab1a-1cebece7cb27",
			version = 2,
		},
		inheritedIndex = 27,
	},
	
	{
		data = 
		{
			name = "Multitool",
			uuid = "62815923-9540-1e5e-8ad5-18ef1047f6af",
			version = 2,
		},
		inheritedIndex = 28,
		inheritedObjectUUID = "99232b2f-f076-00e3-92a0-3738aaba1ce6",
		inheritedOverwrites = 
		{
			actions = 
			{
				
				{
					type = "add",
					value = 
					{
						data = 
						{
							name = "",
							uuid = "88c756be-144a-c358-973c-3b6b9939b857",
							version = 2,
						},
						inheritedObjectUUID = "69b3d0f1-9d83-ac26-92f3-ac34f600f8ee",
						inheritedOverwrites = 
						{
							aType = "Variable",
							gVar = "ACR_RikuWHM2_Hotbar_Surecast",
							variableIsHover = false,
						},
					},
				},
			},
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Variable",
						actionID = 7432,
						conditions = 
						{
							
							{
								"1debcc56-5de9-4ac9-acf5-9b0fd2b2a67f",
								true,
							},
							
							{
								"6eb3a79b-063c-b185-9f01-797e8f1307b1",
								true,
							},
							
							{
								"3ca0ecf8-ad2e-3ce5-9320-c903fe63b918",
								true,
							},
							
							{
								"7b244a9e-bf7a-f101-8274-592981ff44f5",
								true,
							},
							
							{
								"73fbdb86-eb4d-fd59-bbb5-7ef1b876d19c",
								true,
							},
							
							{
								"39086399-cc48-b7e3-80a3-393a5e4cdbc1",
								true,
							},
						},
						endIfUsed = true,
						fallthrough = true,
						gVar = "ACR_RikuWHM2_Healbar_DivineBenison",
						ignoreWeaveRules = true,
						targetType = "Main Tank",
						uuid = "30f4dac6-e046-b19d-80b2-5f53b426cad3",
						variableIsHover = true,
						variableTogglesType = 3,
						version = 2,
					},
				},
				
				{
					data = 
					{
						aType = "Variable",
						actionID = 25861,
						conditions = 
						{
							
							{
								"1debcc56-5de9-4ac9-acf5-9b0fd2b2a67f",
								true,
							},
							
							{
								"6eb3a79b-063c-b185-9f01-797e8f1307b1",
								true,
							},
							
							{
								"3ca0ecf8-ad2e-3ce5-9320-c903fe63b918",
								true,
							},
							
							{
								"e322e744-6977-0886-83ae-42fbddaa5313",
								true,
							},
							
							{
								"9353792e-b7b2-a516-8e36-741beee21def",
								true,
							},
						},
						endIfUsed = true,
						gVar = "ACR_RikuWHM2_Healbar_AquaveilMouse",
						ignoreWeaveRules = true,
						targetType = "Main Tank",
						uuid = "ad3516d7-8705-ef87-a3d1-fa56a83cd83b",
						variableIsHover = true,
						variableTogglesType = 3,
						version = 2,
					},
					inheritedIndex = 2,
				},
				
				{
					data = 
					{
						aType = "Variable",
						actionID = 7432,
						conditions = 
						{
							
							{
								"1debcc56-5de9-4ac9-acf5-9b0fd2b2a67f",
								true,
							},
							
							{
								"6eb3a79b-063c-b185-9f01-797e8f1307b1",
								true,
							},
							
							{
								"3ca0ecf8-ad2e-3ce5-9320-c903fe63b918",
								true,
							},
							
							{
								"e322e744-6977-0886-83ae-42fbddaa5313",
								true,
							},
							
							{
								"73fbdb86-eb4d-fd59-bbb5-7ef1b876d19c",
								true,
							},
							
							{
								"39086399-cc48-b7e3-80a3-393a5e4cdbc1",
								true,
							},
						},
						endIfUsed = true,
						fallthrough = true,
						gVar = "ACR_RikuWHM2_Healbar_DivineBenison",
						ignoreWeaveRules = true,
						targetType = "Main Tank",
						uuid = "3116f291-e346-86b1-99f1-c3a5135df6a0",
						variableIsHover = true,
						variableTogglesType = 3,
						version = 2,
					},
				},
				
				{
					data = 
					{
						aType = "Variable",
						actionID = 25861,
						conditions = 
						{
							
							{
								"1debcc56-5de9-4ac9-acf5-9b0fd2b2a67f",
								true,
							},
							
							{
								"6eb3a79b-063c-b185-9f01-797e8f1307b1",
								true,
							},
							
							{
								"3ca0ecf8-ad2e-3ce5-9320-c903fe63b918",
								true,
							},
							
							{
								"e322e744-6977-0886-83ae-42fbddaa5313",
								true,
							},
							
							{
								"9353792e-b7b2-a516-8e36-741beee21def",
								true,
							},
						},
						endIfUsed = true,
						gVar = "ACR_RikuWHM2_Healbar_AquaveilMouse",
						ignoreWeaveRules = true,
						targetType = "Main Tank",
						uuid = "59a66515-7820-c779-9535-9d292137f575",
						variableIsHover = true,
						variableTogglesType = 3,
						version = 2,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return AnyoneCore.assistCallback()",
						dequeueIfLuaFalse = true,
						name = "bot is running",
						uuid = "1debcc56-5de9-4ac9-acf5-9b0fd2b2a67f",
						version = 2,
					},
					inheritedIndex = 1,
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return Leta.settings.Toggles[\"Mitigation\"].bool",
						dequeueIfLuaFalse = true,
						name = "Toggle Mitigation",
						uuid = "6eb3a79b-063c-b185-9f01-797e8f1307b1",
						version = 2,
					},
					inheritedIndex = 3,
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return Leta.settings.Toggles[\"Heal\"].bool",
						dequeueIfLuaFalse = true,
						name = "Toggle Heal",
						uuid = "3ca0ecf8-ad2e-3ce5-9320-c903fe63b918",
						version = 2,
					},
					inheritedIndex = 4,
				},
				
				{
					data = 
					{
						channelCheckSpellIDList = 
						{
							26126,
							26153,
						},
						channelCheckType = 2,
						conditionType = 7,
						dequeueIfLuaFalse = true,
						eventArgType = 2,
						uuid = "7b244a9e-bf7a-f101-8274-592981ff44f5",
						version = 2,
					},
				},
				
				{
					data = 
					{
						channelCheckSpellIDList = 
						{
							26127,
							26674,
						},
						channelCheckType = 2,
						conditionType = 7,
						dequeueIfLuaFalse = true,
						uuid = "e322e744-6977-0886-83ae-42fbddaa5313",
						version = 2,
					},
				},
				
				{
					data = 
					{
						buffCheckType = 2,
						buffID = 1218,
						category = "Party",
						partyTargetType = "Main Tank",
						uuid = "73fbdb86-eb4d-fd59-bbb5-7ef1b876d19c",
						version = 2,
					},
				},
				
				{
					data = 
					{
						actionCDValue = 30,
						actionID = 7432,
						category = "Self",
						comparator = 2,
						conditionType = 4,
						name = "CD - Benison <= 30s",
						uuid = "39086399-cc48-b7e3-80a3-393a5e4cdbc1",
						version = 2,
					},
				},
				
				{
					data = 
					{
						actionID = 25861,
						category = "Self",
						comparator = 2,
						conditionType = 4,
						name = "CD - Aquaveil <= 0s",
						uuid = "9353792e-b7b2-a516-8e36-741beee21def",
						version = 2,
					},
				},
			},
			eventType = 3,
			name = "Tankbusters",
			throttleTime = 1250,
			timeout = 3,
			uuid = "e53fb64c-27d7-5825-b6ed-7d69e5d1e97b",
			version = 2,
		},
		inheritedIndex = 29,
	},
	
	{
		data = 
		{
			actions = 
			{
			},
			conditions = 
			{
			},
			enabled = false,
			name = "--Auto-healing",
			uuid = "7b2f2228-75ba-4851-b497-2052cbbf1ea1",
			version = 2,
		},
		inheritedIndex = 30,
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						actionID = 25862,
						conditions = 
						{
							
							{
								"285098cb-d656-1f34-ad23-84d0d07e869c",
								true,
							},
							
							{
								"86aec0b3-20df-c6f5-ac49-ef4de7eed88b",
								true,
							},
							
							{
								"0da9f25b-c714-4d09-ae62-be262805c0e8",
								true,
							},
							
							{
								"439f4507-25be-6118-916c-cd663dbbcca9",
								true,
							},
							
							{
								"da53dbb3-ddf9-595a-9d14-c8ac9e126654",
								true,
							},
						},
						endIfUsed = true,
						targetType = "Detection Target",
						uuid = "88ae4d37-1001-0775-9719-b5d2ead3547c",
						variableTogglesType = 2,
						version = 2,
					},
					inheritedIndex = 1,
				},
				
				{
					data = 
					{
						aType = "Variable",
						actionID = 140,
						atomicPriority = true,
						conditions = 
						{
							
							{
								"285098cb-d656-1f34-ad23-84d0d07e869c",
								true,
							},
							
							{
								"f96f6af8-4458-152b-a96c-e31b2b454ba2",
								true,
							},
							
							{
								"439f4507-25be-6118-916c-cd663dbbcca9",
								true,
							},
							
							{
								"63941b9b-eb10-af2f-abd1-78750374cfc0",
								true,
							},
							
							{
								"3d998e0e-3598-6762-9074-432d024f0e55",
								true,
							},
						},
						endIfUsed = true,
						gVar = "ACR_RikuWHM2_Healbar_Benediction",
						ignoreWeaveRules = true,
						targetType = "Detection Target",
						uuid = "5f09f263-93a2-8020-8f8d-120765cfc4b3",
						variableIsHover = true,
						variableTogglesType = 3,
						version = 2,
					},
					inheritedIndex = 1,
				},
				
				{
					data = 
					{
						aType = "Variable",
						conditions = 
						{
							
							{
								"285098cb-d656-1f34-ad23-84d0d07e869c",
								true,
							},
							
							{
								"5a5457f0-e7e2-406a-aa66-330a294bab42",
								true,
							},
							
							{
								"69784c75-865f-114a-a91d-821e653cbede",
								true,
							},
							
							{
								"439f4507-25be-6118-916c-cd663dbbcca9",
								true,
							},
							
							{
								"907b1acc-abb9-fe80-9337-783f13a875d9",
								true,
							},
							
							{
								"5d771e03-49ff-3bb5-be42-396b8b32029b",
								true,
							},
						},
						endIfUsed = true,
						gVar = "ACR_RikuWHM2_Healbar_PlenaryIndulgence",
						name = "Variable Indulgence",
						uuid = "45536740-eb91-8793-85f6-d84d8bdea8d8",
						variableTogglesType = 3,
						version = 2,
					},
					inheritedIndex = 3,
				},
				
				{
					data = 
					{
						aType = "Variable",
						conditions = 
						{
							
							{
								"285098cb-d656-1f34-ad23-84d0d07e869c",
								true,
							},
							
							{
								"ab75b47b-98d2-05cd-856f-c70fd977b7da",
								true,
							},
							
							{
								"69784c75-865f-114a-a91d-821e653cbede",
								true,
							},
							
							{
								"439f4507-25be-6118-916c-cd663dbbcca9",
								true,
							},
							
							{
								"907b1acc-abb9-fe80-9337-783f13a875d9",
								true,
							},
							
							{
								"5d771e03-49ff-3bb5-be42-396b8b32029b",
								true,
							},
						},
						endIfUsed = true,
						gVar = "ACR_RikuWHM2_Healbar_PlenaryIndulgence",
						uuid = "2f2fe793-b93c-0ed6-aa4a-b2fbd6667a38",
						variableTogglesType = 3,
						version = 2,
					},
					inheritedIndex = 2,
				},
				
				{
					data = 
					{
						aType = "Variable",
						actionID = 16536,
						conditions = 
						{
							
							{
								"285098cb-d656-1f34-ad23-84d0d07e869c",
								true,
							},
							
							{
								"86aec0b3-20df-c6f5-ac49-ef4de7eed88b",
								true,
							},
							
							{
								"c8ec7363-05cf-056e-a860-efa731153cfd",
								true,
							},
							
							{
								"439f4507-25be-6118-916c-cd663dbbcca9",
								true,
							},
							
							{
								"22394ac0-74f6-f049-a7bf-f78bb43872d9",
								true,
							},
						},
						endIfUsed = true,
						gVar = "ACR_RikuWHM2_Hotbar_Temperance",
						ignoreWeaveRules = true,
						uuid = "c4e0166e-132a-de16-b884-391f85c9e897",
						variableTogglesType = 2,
						version = 2,
					},
				},
				
				{
					data = 
					{
						aType = "Variable",
						actionID = 3569,
						conditions = 
						{
							
							{
								"285098cb-d656-1f34-ad23-84d0d07e869c",
								true,
							},
							
							{
								"d1a4a841-b1d0-2da0-aaaf-ba0d830c4f7e",
								true,
							},
							
							{
								"92d6e663-d9a5-82cd-8ce5-800debe99e61",
								true,
							},
							
							{
								"439f4507-25be-6118-916c-cd663dbbcca9",
								true,
							},
							
							{
								"394a8c5b-199e-8790-9e3f-8e6fa631972e",
								true,
							},
						},
						endIfUsed = true,
						gVar = "ACR_RikuWHM2_Healbar_AsylumAuto",
						targetType = "Detection Target",
						uuid = "6f90c9ea-2f92-8f89-a4c5-9b127847a2da",
						variableTogglesType = 3,
						version = 2,
					},
					inheritedIndex = 4,
				},
				
				{
					data = 
					{
						aType = "Variable",
						conditions = 
						{
							
							{
								"285098cb-d656-1f34-ad23-84d0d07e869c",
								true,
							},
							
							{
								"5a5457f0-e7e2-406a-aa66-330a294bab42",
								true,
							},
							
							{
								"439f4507-25be-6118-916c-cd663dbbcca9",
								true,
							},
							
							{
								"cbc4fd24-1f79-74c6-bf99-efca3bc7694d",
								true,
							},
							
							{
								"6760eb89-2506-de36-b4a6-290b1493ae28",
								true,
							},
						},
						endIfUsed = true,
						gVar = "ACR_RikuWHM2_Healbar_AfflatusRapture",
						uuid = "28a52a02-5398-8884-9f50-c68f983ff714",
						variableTogglesType = 3,
						version = 2,
					},
					inheritedIndex = 6,
				},
				
				{
					data = 
					{
						aType = "Variable",
						conditions = 
						{
							
							{
								"285098cb-d656-1f34-ad23-84d0d07e869c",
								true,
							},
							
							{
								"b39cd5df-64a9-0c52-a2c6-8f57da3933e8",
								true,
							},
							
							{
								"ab75b47b-98d2-05cd-856f-c70fd977b7da",
								true,
							},
							
							{
								"69784c75-865f-114a-a91d-821e653cbede",
								true,
							},
							
							{
								"439f4507-25be-6118-916c-cd663dbbcca9",
								true,
							},
							
							{
								"94699a84-6d60-1bd5-b5be-4817bdb9a57b",
								true,
							},
							
							{
								"d5ec6b6d-d2ba-8f0b-86c6-c9715be2f9bc",
								true,
							},
						},
						endIfUsed = true,
						fallthrough = true,
						gVar = "ACR_RikuWHM2_Hotbar_ThinAir",
						uuid = "dd105896-673c-bd59-adff-f7bb10e636ff",
						variableTogglesType = 2,
						version = 2,
					},
					inheritedIndex = 4,
				},
				
				{
					data = 
					{
						aType = "Variable",
						actionID = 133,
						conditions = 
						{
							
							{
								"285098cb-d656-1f34-ad23-84d0d07e869c",
								true,
							},
							
							{
								"b39cd5df-64a9-0c52-a2c6-8f57da3933e8",
								true,
							},
							
							{
								"ab75b47b-98d2-05cd-856f-c70fd977b7da",
								true,
							},
							
							{
								"69784c75-865f-114a-a91d-821e653cbede",
								true,
							},
							
							{
								"439f4507-25be-6118-916c-cd663dbbcca9",
								true,
							},
							
							{
								"950a40e9-3a74-7064-98a5-50e4b4d74590",
								true,
							},
							
							{
								"d5ec6b6d-d2ba-8f0b-86c6-c9715be2f9bc",
								true,
							},
						},
						endIfUsed = true,
						gVar = "ACR_RikuWHM2_Healbar_Medica2",
						uuid = "12662c4d-b85f-b4ad-9b0b-65980c2438b1",
						variableTogglesType = 3,
						version = 2,
					},
					inheritedIndex = 4,
				},
				
				{
					data = 
					{
						aType = "Variable",
						conditions = 
						{
							
							{
								"285098cb-d656-1f34-ad23-84d0d07e869c",
								true,
							},
							
							{
								"ab75b47b-98d2-05cd-856f-c70fd977b7da",
								true,
							},
							
							{
								"69784c75-865f-114a-a91d-821e653cbede",
								true,
							},
							
							{
								"439f4507-25be-6118-916c-cd663dbbcca9",
								true,
							},
							
							{
								"94699a84-6d60-1bd5-b5be-4817bdb9a57b",
								true,
							},
							
							{
								"9dd5e19e-99aa-325a-8513-f4ee4bf179bb",
								true,
							},
						},
						endIfUsed = true,
						fallthrough = true,
						gVar = "ACR_RikuWHM2_Hotbar_ThinAir",
						uuid = "8bec73b0-e914-ba37-af27-ed74410b65f9",
						variableTogglesType = 2,
						version = 2,
					},
					inheritedIndex = 7,
				},
				
				{
					data = 
					{
						aType = "Variable",
						conditions = 
						{
							
							{
								"285098cb-d656-1f34-ad23-84d0d07e869c",
								true,
							},
							
							{
								"ab75b47b-98d2-05cd-856f-c70fd977b7da",
								true,
							},
							
							{
								"69784c75-865f-114a-a91d-821e653cbede",
								true,
							},
							
							{
								"439f4507-25be-6118-916c-cd663dbbcca9",
								true,
							},
							
							{
								"950a40e9-3a74-7064-98a5-50e4b4d74590",
								true,
							},
							
							{
								"9dd5e19e-99aa-325a-8513-f4ee4bf179bb",
								true,
							},
						},
						endIfUsed = true,
						gVar = "ACR_RikuWHM2_Healbar_Cure3",
						targetType = "Detection Target",
						uuid = "2221ce16-b6fe-49c5-bb30-f00f9fe459b3",
						variableIsHover = true,
						variableTogglesType = 3,
						version = 2,
					},
					inheritedIndex = 6,
				},
				
				{
					data = 
					{
						aType = "Variable",
						conditions = 
						{
							
							{
								"285098cb-d656-1f34-ad23-84d0d07e869c",
								true,
							},
							
							{
								"ab75b47b-98d2-05cd-856f-c70fd977b7da",
								true,
							},
							
							{
								"69784c75-865f-114a-a91d-821e653cbede",
								true,
							},
							
							{
								"439f4507-25be-6118-916c-cd663dbbcca9",
								true,
							},
							
							{
								"950a40e9-3a74-7064-98a5-50e4b4d74590",
								true,
							},
							
							{
								"946c997c-68d2-2ca4-afd5-f6c394f6cadf",
								true,
							},
						},
						endIfUsed = true,
						gVar = "ACR_RikuWHM2_Healbar_Medica",
						uuid = "53e12bf1-0308-5d2e-af66-0e7b817ffe63",
						variableTogglesType = 3,
						version = 2,
					},
					inheritedIndex = 5,
				},
				
				{
					data = 
					{
						aType = "Variable",
						conditions = 
						{
							
							{
								"285098cb-d656-1f34-ad23-84d0d07e869c",
								true,
							},
							
							{
								"b39cd5df-64a9-0c52-a2c6-8f57da3933e8",
								true,
							},
							
							{
								"ab75b47b-98d2-05cd-856f-c70fd977b7da",
								true,
							},
							
							{
								"5ca72a84-937c-28e2-b803-b51e3f838d4f",
								true,
							},
							
							{
								"439f4507-25be-6118-916c-cd663dbbcca9",
								true,
							},
							
							{
								"56d5bc98-0761-3ed3-b801-079ed68020bb",
								true,
							},
						},
						endIfUsed = true,
						gVar = "ACR_RikuWHM2_Healbar_Regen",
						targetType = "Detection Target",
						uuid = "167f9bbf-daff-b59b-a513-919e174ccf23",
						variableIsHover = true,
						variableTogglesType = 3,
						version = 2,
					},
					inheritedIndex = 12,
				},
				
				{
					data = 
					{
						aType = "Variable",
						actionID = 3570,
						atomicPriority = true,
						conditions = 
						{
							
							{
								"285098cb-d656-1f34-ad23-84d0d07e869c",
								true,
							},
							
							{
								"5ca72a84-937c-28e2-b803-b51e3f838d4f",
								true,
							},
							
							{
								"439f4507-25be-6118-916c-cd663dbbcca9",
								true,
							},
							
							{
								"fca86302-04d6-e671-9e3e-fbebd1d595fc",
								true,
							},
							
							{
								"938c512d-5c79-9f0f-b4ed-3819e586caad",
								true,
							},
						},
						endIfUsed = true,
						gVar = "ACR_RikuWHM2_Healbar_Tetra",
						ignoreWeaveRules = true,
						targetType = "Detection Target",
						uuid = "96d96f2b-c863-e6ba-b21f-8a25a6a68481",
						variableIsHover = true,
						variableTogglesType = 3,
						version = 2,
					},
					inheritedIndex = 3,
				},
				
				{
					data = 
					{
						aType = "Variable",
						actionID = 16531,
						atomicPriority = true,
						conditions = 
						{
							
							{
								"285098cb-d656-1f34-ad23-84d0d07e869c",
								true,
							},
							
							{
								"14eb614d-3f9f-5a44-9b4b-a05b91a96752",
								true,
							},
							
							{
								"439f4507-25be-6118-916c-cd663dbbcca9",
								true,
							},
							
							{
								"cbc4fd24-1f79-74c6-bf99-efca3bc7694d",
								true,
							},
							
							{
								"938c512d-5c79-9f0f-b4ed-3819e586caad",
								true,
							},
						},
						endIfUsed = true,
						gVar = "ACR_RikuWHM2_Healbar_AfflatusSolace",
						ignoreWeaveRules = true,
						targetType = "Detection Target",
						uuid = "45230f0c-bd60-c25f-94f8-44afdd9ab760",
						variableIsHover = true,
						variableTogglesType = 3,
						version = 2,
					},
					inheritedIndex = 8,
				},
				
				{
					data = 
					{
						aType = "Variable",
						actionID = 137,
						conditions = 
						{
							
							{
								"285098cb-d656-1f34-ad23-84d0d07e869c",
								true,
							},
							
							{
								"b39cd5df-64a9-0c52-a2c6-8f57da3933e8",
								true,
							},
							
							{
								"ab75b47b-98d2-05cd-856f-c70fd977b7da",
								true,
							},
							
							{
								"5ca72a84-937c-28e2-b803-b51e3f838d4f",
								true,
							},
							
							{
								"439f4507-25be-6118-916c-cd663dbbcca9",
								true,
							},
							
							{
								"813ae00c-5cc4-ef8a-b37f-88320a41d30d",
								true,
							},
							
							{
								"c4a9ec76-607d-ae9c-aa19-ca0bfec3677d",
								true,
							},
						},
						endIfUsed = true,
						gVar = "ACR_RikuWHM2_Healbar_Regen",
						ignoreWeaveRules = true,
						targetType = "Detection Target",
						uuid = "f8e270b3-6a82-0da4-a746-8d93e710701e",
						variableIsHover = true,
						variableTogglesType = 3,
						version = 2,
					},
					inheritedIndex = 14,
				},
				
				{
					data = 
					{
						aType = "Variable",
						conditions = 
						{
							
							{
								"285098cb-d656-1f34-ad23-84d0d07e869c",
								true,
							},
							
							{
								"ab75b47b-98d2-05cd-856f-c70fd977b7da",
								true,
							},
							
							{
								"5ca72a84-937c-28e2-b803-b51e3f838d4f",
								true,
							},
							
							{
								"439f4507-25be-6118-916c-cd663dbbcca9",
								true,
							},
							
							{
								"94699a84-6d60-1bd5-b5be-4817bdb9a57b",
								true,
							},
							
							{
								"938c512d-5c79-9f0f-b4ed-3819e586caad",
								true,
							},
						},
						endIfUsed = true,
						fallthrough = true,
						gVar = "ACR_RikuWHM2_Hotbar_ThinAir",
						uuid = "ad7071b1-5b0c-958f-9f97-0e6631c1dbff",
						variableTogglesType = 2,
						version = 2,
					},
					inheritedIndex = 15,
				},
				
				{
					data = 
					{
						aType = "Variable",
						actionID = 135,
						conditions = 
						{
							
							{
								"285098cb-d656-1f34-ad23-84d0d07e869c",
								true,
							},
							
							{
								"ab75b47b-98d2-05cd-856f-c70fd977b7da",
								true,
							},
							
							{
								"5ca72a84-937c-28e2-b803-b51e3f838d4f",
								true,
							},
							
							{
								"439f4507-25be-6118-916c-cd663dbbcca9",
								true,
							},
							
							{
								"950a40e9-3a74-7064-98a5-50e4b4d74590",
								true,
							},
							
							{
								"938c512d-5c79-9f0f-b4ed-3819e586caad",
								true,
							},
						},
						endIfUsed = true,
						gVar = "ACR_RikuWHM2_Healbar_Cure2",
						ignoreWeaveRules = true,
						targetType = "Detection Target",
						uuid = "47889f70-c20f-3b0a-bbcd-483904be6a44",
						variableIsHover = true,
						variableTogglesType = 3,
						version = 2,
					},
					inheritedIndex = 2,
				},
				
				{
					data = 
					{
						aType = "Variable",
						actionID = 120,
						conditions = 
						{
							
							{
								"285098cb-d656-1f34-ad23-84d0d07e869c",
								true,
							},
							
							{
								"ab75b47b-98d2-05cd-856f-c70fd977b7da",
								true,
							},
							
							{
								"5ca72a84-937c-28e2-b803-b51e3f838d4f",
								true,
							},
							
							{
								"439f4507-25be-6118-916c-cd663dbbcca9",
								true,
							},
							
							{
								"950a40e9-3a74-7064-98a5-50e4b4d74590",
								true,
							},
							
							{
								"938c512d-5c79-9f0f-b4ed-3819e586caad",
								true,
							},
						},
						endIfUsed = true,
						gVar = "ACR_RikuWHM2_Healbar_Cure",
						ignoreWeaveRules = true,
						targetType = "Detection Target",
						uuid = "fd737592-54aa-ddcf-90bc-8eb03defc32b",
						variableIsHover = true,
						variableTogglesType = 3,
						version = 2,
					},
					inheritedIndex = 18,
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return AnyoneCore.assistCallback()",
						dequeueIfLuaFalse = true,
						name = "bot is running",
						uuid = "285098cb-d656-1f34-ad23-84d0d07e869c",
						version = 2,
					},
					inheritedIndex = 1,
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return Argus ~= nil and TensorCore.Avoidance.inUnavoidableAOE(TensorCore.mGetPlayer().id)",
						conditionType = 2,
						dequeueIfLuaFalse = true,
						hpValue = 101,
						name = "unavoidable aoe",
						uuid = "86aec0b3-20df-c6f5-ac49-ef4de7eed88b",
						version = 2,
					},
					inheritedIndex = 1,
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 7,
						uuid = "d1a4a841-b1d0-2da0-aaaf-ba0d830c4f7e",
						version = 2,
					},
					inheritedIndex = 3,
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return Leta.settings.Toggles[\"Asylum\"].bool",
						dequeueIfLuaFalse = true,
						name = "Toggle Asylum",
						uuid = "92d6e663-d9a5-82cd-8ce5-800debe99e61",
						version = 2,
					},
					inheritedIndex = 4,
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return Leta.settings.Toggles[\"HOT\"].bool",
						dequeueIfLuaFalse = true,
						name = "Toggle HOT",
						uuid = "b39cd5df-64a9-0c52-a2c6-8f57da3933e8",
						version = 2,
					},
					inheritedIndex = 5,
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return Leta.settings.Toggles[\"Benediction\"].bool",
						dequeueIfLuaFalse = true,
						name = "Toggle Benediction",
						uuid = "f96f6af8-4458-152b-a96c-e31b2b454ba2",
						version = 2,
					},
					inheritedIndex = 6,
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return Leta.settings.Toggles[\"Temperance\"].bool",
						dequeueIfLuaFalse = true,
						name = "Toggle Temperance",
						uuid = "c8ec7363-05cf-056e-a860-efa731153cfd",
						version = 2,
					},
					inheritedIndex = 7,
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return Leta.settings.Toggles[\"Bell\"].bool",
						dequeueIfLuaFalse = true,
						name = "Toggle Bell",
						uuid = "0da9f25b-c714-4d09-ae62-be262805c0e8",
						version = 2,
					},
					inheritedIndex = 8,
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return Leta.settings.Toggles[\"Rapture\"].bool",
						dequeueIfLuaFalse = true,
						name = "Toggle Rapture",
						uuid = "5a5457f0-e7e2-406a-aa66-330a294bab42",
						version = 2,
					},
					inheritedIndex = 9,
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return Leta.settings.Toggles[\"Solace\"].bool",
						dequeueIfLuaFalse = true,
						name = "Toggle Solace",
						uuid = "14eb614d-3f9f-5a44-9b4b-a05b91a96752",
						version = 2,
					},
					inheritedIndex = 10,
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return Leta.settings.Toggles[\"GCD\"].bool",
						dequeueIfLuaFalse = true,
						name = "Toggle GCD",
						uuid = "ab75b47b-98d2-05cd-856f-c70fd977b7da",
						version = 2,
					},
					inheritedIndex = 9,
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return Leta.settings.Toggles[\"ST\"].bool",
						dequeueIfLuaFalse = true,
						name = "Toggle ST",
						uuid = "5ca72a84-937c-28e2-b803-b51e3f838d4f",
						version = 2,
					},
					inheritedIndex = 10,
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return Leta.settings.Toggles[\"Mitigation\"].bool",
						dequeueIfLuaFalse = true,
						name = "Toggle Mitigation",
						uuid = "fa077e55-a48f-bd33-8518-ffa092edb97f",
						version = 2,
					},
					inheritedIndex = 11,
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return Leta.settings.Toggles[\"AOE\"].bool",
						dequeueIfLuaFalse = true,
						name = "Toggle AOE",
						uuid = "69784c75-865f-114a-a91d-821e653cbede",
						version = 2,
					},
					inheritedIndex = 12,
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return Leta.settings.Toggles[\"Heal\"].bool",
						dequeueIfLuaFalse = true,
						name = "Toggle Heal",
						uuid = "439f4507-25be-6118-916c-cd663dbbcca9",
						version = 2,
					},
					inheritedIndex = 13,
				},
				
				{
					data = 
					{
						channelCheckType = 3,
						conditionType = 7,
						name = "Target Channel >= 0s",
						uuid = "22394ac0-74f6-f049-a7bf-f78bb43872d9",
						version = 2,
					},
					inheritedIndex = 2,
				},
				
				{
					data = 
					{
						category = "Party",
						comparator = 2,
						conditionType = 2,
						hpValue = 15,
						name = "HP - 15%",
						partyTargetType = "Detection Target",
						uuid = "3b404d01-61d3-cab5-8398-1f6c708038a8",
						version = 2,
					},
					inheritedIndex = 3,
				},
				
				{
					data = 
					{
						category = "Party",
						comparator = 2,
						conditionType = 2,
						hpValue = 50,
						name = "HP - 50%",
						partyTargetType = "Detection Target",
						uuid = "8f79578c-857e-cd8f-8217-72f2746c6ac2",
						version = 2,
					},
					inheritedIndex = 4,
				},
				
				{
					data = 
					{
						category = "Party",
						comparator = 2,
						conditionType = 2,
						hpValue = 60,
						name = "HP - 60%",
						partyTargetNumber = 3,
						partyTargetSubType = "Number",
						partyTargetType = "Detection Target",
						uuid = "b51ae390-197e-ce8b-ac93-65f1b0eb947c",
						version = 2,
					},
					inheritedIndex = 4,
				},
				
				{
					data = 
					{
						category = "Party",
						comparator = 2,
						conditionType = 2,
						dequeueIfLuaFalse = true,
						hpValue = 75,
						name = "HP - 75%",
						partyTargetSubType = "Lowest HP",
						partyTargetType = "Detection Target",
						uuid = "36a80628-9e24-14c3-8654-a593cfe729f9",
						version = 2,
					},
					inheritedIndex = 4,
				},
				
				{
					data = 
					{
						category = "Party",
						comparator = 2,
						conditionType = 4,
						inRangeValue = 15,
						name = "Range - 15 yalms",
						partyTargetNumber = 3,
						partyTargetSubType = "Number",
						partyTargetType = "Detection Target",
						uuid = "9f31fcf8-d358-e017-8f31-8b9f2d7ff379",
						version = 2,
					},
					inheritedIndex = 8,
				},
				
				{
					data = 
					{
						category = "Party",
						comparator = 2,
						conditionType = 4,
						inRangeValue = 20,
						name = "Range - 20 yalms",
						uuid = "afc4cfde-7b0b-ac3f-9afc-38cfb8c8cda8",
						version = 2,
					},
					inheritedIndex = 7,
				},
				
				{
					data = 
					{
						category = "Party",
						comparator = 2,
						conditionType = 4,
						inRangeValue = 30,
						name = "Range - 30 yalms",
						partyTargetNumber = 3,
						partyTargetSubType = "Number",
						partyTargetType = "Detection Target",
						uuid = "07140ed1-af7f-3528-b26f-fa4db4cf269f",
						version = 2,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						comparator = 2,
						conditionType = 6,
						gaugeIndex = 2,
						name = "Gauge - 0 Lilies",
						uuid = "813ae00c-5cc4-ef8a-b37f-88320a41d30d",
						version = 2,
					},
					inheritedIndex = 24,
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 6,
						dequeueIfLuaFalse = true,
						gaugeIndex = 2,
						gaugeValue = 1,
						name = "Gauge 1+ Lilies",
						uuid = "cbc4fd24-1f79-74c6-bf99-efca3bc7694d",
						version = 2,
					},
					inheritedIndex = 20,
				},
				
				{
					data = 
					{
						actionID = 3569,
						category = "Self",
						comparator = 2,
						conditionType = 4,
						name = "CD - Asylum <= 0s",
						uuid = "394a8c5b-199e-8790-9e3f-8e6fa631972e",
						version = 2,
					},
					inheritedIndex = 24,
				},
				
				{
					data = 
					{
						actionID = 140,
						category = "Self",
						comparator = 2,
						conditionType = 4,
						name = "CD - Benediction <= 0s",
						uuid = "63941b9b-eb10-af2f-abd1-78750374cfc0",
						version = 2,
					},
					inheritedIndex = 13,
				},
				
				{
					data = 
					{
						actionID = 7433,
						category = "Self",
						comparator = 2,
						conditionType = 4,
						name = "CD - Indulgence <= 0s",
						uuid = "907b1acc-abb9-fe80-9337-783f13a875d9",
						version = 2,
					},
					inheritedIndex = 16,
				},
				
				{
					data = 
					{
						actionID = 3570,
						category = "Self",
						comparator = 2,
						conditionType = 4,
						name = "CD - Tetra <= 0s",
						uuid = "fca86302-04d6-e671-9e3e-fbebd1d595fc",
						version = 2,
					},
					inheritedIndex = 17,
				},
				
				{
					data = 
					{
						actionID = 7430,
						category = "Self",
						comparator = 2,
						conditionType = 4,
						name = "CD - Thin Air <= 0s",
						uuid = "94699a84-6d60-1bd5-b5be-4817bdb9a57b",
						version = 2,
					},
					inheritedIndex = 16,
				},
				
				{
					data = 
					{
						buffCheckType = 2,
						buffID = 1219,
						category = "Party",
						name = "Buff - Confession",
						partyTargetType = "Detection Target",
						uuid = "06ccad9f-fd3b-e81d-ad4e-d8d793c7f3ad",
						version = 2,
					},
					inheritedIndex = 15,
				},
				
				{
					data = 
					{
						buffID = 1769,
						category = "Party",
						name = "Buff - Doom",
						partyTargetSubType = "Lowest HP",
						uuid = "16383095-c6fc-b2e8-82c0-bfe6b6c08b09",
						version = 2,
					},
					inheritedIndex = 16,
				},
				
				{
					data = 
					{
						buffCheckType = 2,
						buffID = 150,
						category = "Party",
						name = "Buff - Medica II",
						partyTargetType = "Detection Target",
						uuid = "557b7d30-ed11-db2d-9517-10c2788c6575",
						version = 2,
					},
					inheritedIndex = 17,
				},
				
				{
					data = 
					{
						buffCheckType = 5,
						buffID = 158,
						buffIDList = 
						{
							158,
							150,
						},
						category = "Party",
						dequeueIfLuaFalse = true,
						name = "Buff - Regen",
						partyTargetType = "Detection Target",
						uuid = "11463cd8-2d22-a7da-b4cc-f603cc0cce30",
						version = 2,
					},
					inheritedIndex = 18,
				},
				
				{
					data = 
					{
						buffCheckType = 2,
						buffID = 167,
						category = "Self",
						dequeueIfLuaFalse = true,
						name = "Buff - Swiftcast",
						uuid = "950a40e9-3a74-7064-98a5-50e4b4d74590",
						version = 2,
					},
					inheritedIndex = 32,
				},
				
				{
					data = 
					{
						category = "Filter",
						clusterMinTarget = 2,
						clusterRadius = 15,
						conditions = 
						{
							
							{
								"07140ed1-af7f-3528-b26f-fa4db4cf269f",
								true,
							},
						},
						dequeueIfLuaFalse = true,
						filterTargetSubtype = "Most Clustered",
						filterTargetType = "Party",
						name = "F - Asylum",
						uuid = "9ce67f94-d904-410c-978e-b134494ae94c",
						version = 2,
					},
					inheritedIndex = 22,
				},
				
				{
					data = 
					{
						category = "Filter",
						clusterMinTarget = 2,
						clusterRadius = 20,
						dequeueIfLuaFalse = true,
						filterTargetSubtype = "Most Clustered",
						filterTargetType = "Party",
						name = "F - Bell",
						uuid = "da53dbb3-ddf9-595a-9d14-c8ac9e126654",
						version = 2,
					},
					inheritedIndex = 33,
				},
				
				{
					data = 
					{
						category = "Filter",
						clusterMinTarget = 2,
						clusterRadius = 10,
						conditions = 
						{
							
							{
								"36a80628-9e24-14c3-8654-a593cfe729f9",
								true,
							},
							
							{
								"07140ed1-af7f-3528-b26f-fa4db4cf269f",
								true,
							},
						},
						dequeueIfLuaFalse = true,
						filterTargetSubtype = "Most Clustered",
						filterTargetType = "Party",
						name = "F - Cure III",
						uuid = "9dd5e19e-99aa-325a-8513-f4ee4bf179bb",
						version = 2,
					},
					inheritedIndex = 18,
				},
				
				{
					data = 
					{
						category = "Filter",
						conditions = 
						{
							
							{
								"16383095-c6fc-b2e8-82c0-bfe6b6c08b09",
								true,
							},
							
							{
								"07140ed1-af7f-3528-b26f-fa4db4cf269f",
								true,
							},
						},
						dequeueIfLuaFalse = true,
						filterTargetType = "Party",
						name = "F - Doom",
						uuid = "b378ce59-c22d-ba03-8db9-d918912bf2c1",
						version = 2,
					},
					inheritedIndex = 19,
				},
				
				{
					data = 
					{
						category = "Filter",
						conditions = 
						{
							
							{
								"8f79578c-857e-cd8f-8217-72f2746c6ac2",
								true,
							},
							
							{
								"afc4cfde-7b0b-ac3f-9afc-38cfb8c8cda8",
								true,
							},
						},
						dequeueIfLuaFalse = true,
						filterTargetType = "Party",
						name = "F - Indulgence",
						partyTargetNumber = 3,
						uuid = "5d771e03-49ff-3bb5-be42-396b8b32029b",
						version = 2,
					},
					inheritedIndex = 16,
				},
				
				{
					data = 
					{
						category = "Filter",
						conditions = 
						{
							
							{
								"36a80628-9e24-14c3-8654-a593cfe729f9",
								true,
							},
							
							{
								"afc4cfde-7b0b-ac3f-9afc-38cfb8c8cda8",
								true,
							},
							
							{
								"557b7d30-ed11-db2d-9517-10c2788c6575",
								true,
							},
						},
						dequeueIfLuaFalse = true,
						filterTargetType = "Party",
						name = "F - Medica II",
						partyTargetNumber = 3,
						uuid = "d5ec6b6d-d2ba-8f0b-86c6-c9715be2f9bc",
						version = 2,
					},
					inheritedIndex = 22,
				},
				
				{
					data = 
					{
						category = "Filter",
						conditions = 
						{
							
							{
								"36a80628-9e24-14c3-8654-a593cfe729f9",
								true,
							},
							
							{
								"11463cd8-2d22-a7da-b4cc-f603cc0cce30",
								true,
							},
							
							{
								"07140ed1-af7f-3528-b26f-fa4db4cf269f",
								true,
							},
						},
						dequeueIfLuaFalse = true,
						filterTargetSubtype = "Lowest HP",
						filterTargetType = "Party",
						name = "F - Regen",
						uuid = "c4a9ec76-607d-ae9c-aa19-ca0bfec3677d",
						version = 2,
					},
					inheritedIndex = 18,
				},
				
				{
					data = 
					{
						category = "Filter",
						conditions = 
						{
							
							{
								"36a80628-9e24-14c3-8654-a593cfe729f9",
								true,
							},
							
							{
								"11463cd8-2d22-a7da-b4cc-f603cc0cce30",
								true,
							},
							
							{
								"07140ed1-af7f-3528-b26f-fa4db4cf269f",
								true,
							},
						},
						dequeueIfLuaFalse = true,
						filterTargetType = "Main Tank",
						name = "F - Regen Tank",
						uuid = "56d5bc98-0761-3ed3-b801-079ed68020bb",
						version = 2,
					},
					inheritedIndex = 41,
				},
				
				{
					data = 
					{
						category = "Filter",
						conditions = 
						{
							
							{
								"3b404d01-61d3-cab5-8398-1f6c708038a8",
								true,
							},
							
							{
								"07140ed1-af7f-3528-b26f-fa4db4cf269f",
								true,
							},
						},
						dequeueIfLuaFalse = true,
						filterTargetSubtype = "Lowest HP",
						filterTargetType = "Party",
						name = "F - 15% @ 30y",
						uuid = "3d998e0e-3598-6762-9074-432d024f0e55",
						version = 2,
					},
					inheritedIndex = 19,
				},
				
				{
					data = 
					{
						category = "Filter",
						conditions = 
						{
							
							{
								"36a80628-9e24-14c3-8654-a593cfe729f9",
								true,
							},
							
							{
								"07140ed1-af7f-3528-b26f-fa4db4cf269f",
								true,
							},
						},
						dequeueIfLuaFalse = true,
						filterTargetSubtype = "Lowest HP",
						filterTargetType = "Party",
						name = "F - 75% @ 30y",
						uuid = "938c512d-5c79-9f0f-b4ed-3819e586caad",
						version = 2,
					},
					inheritedIndex = 21,
				},
				
				{
					data = 
					{
						category = "Filter",
						conditions = 
						{
							
							{
								"afc4cfde-7b0b-ac3f-9afc-38cfb8c8cda8",
								true,
							},
							
							{
								"8f79578c-857e-cd8f-8217-72f2746c6ac2",
								true,
							},
						},
						dequeueIfLuaFalse = true,
						filterTargetType = "Party",
						name = "F - AoE 50% @ 20y",
						partyTargetNumber = 3,
						uuid = "9a37b5ab-7ea9-8a90-9c79-896b24b0b3f8",
						version = 2,
					},
					inheritedIndex = 25,
				},
				
				{
					data = 
					{
						category = "Filter",
						conditions = 
						{
							
							{
								"36a80628-9e24-14c3-8654-a593cfe729f9",
								true,
							},
							
							{
								"9f31fcf8-d358-e017-8f31-8b9f2d7ff379",
								true,
							},
						},
						dequeueIfLuaFalse = true,
						filterTargetType = "Party",
						name = "F - AoE 75% @ 15y",
						partyTargetNumber = 3,
						uuid = "946c997c-68d2-2ca4-afd5-f6c394f6cadf",
						version = 2,
					},
					inheritedIndex = 27,
				},
				
				{
					data = 
					{
						category = "Filter",
						conditions = 
						{
							
							{
								"36a80628-9e24-14c3-8654-a593cfe729f9",
								true,
							},
							
							{
								"afc4cfde-7b0b-ac3f-9afc-38cfb8c8cda8",
								true,
							},
						},
						dequeueIfLuaFalse = true,
						filterTargetType = "Party",
						name = "F - AoE 75% @ 20y",
						partyTargetNumber = 3,
						uuid = "6760eb89-2506-de36-b4a6-290b1493ae28",
						version = 2,
					},
					inheritedIndex = 48,
				},
			},
			name = "Heal",
			throttleTime = 1250,
			timeout = 3,
			uuid = "3e8084a8-2080-bca0-a3f7-d7ed2c5d60fe",
			version = 2,
		},
		inheritedIndex = 31,
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Variable",
						actionID = 7568,
						conditions = 
						{
							
							{
								"edcc1275-25da-5465-938b-4e845433a73c",
								true,
							},
							
							{
								"3c0fa940-21e7-ac52-8820-24657d09e8c1",
								true,
							},
							
							{
								"fd5a16fc-84ae-1c7c-a0de-897a3ddee173",
								true,
							},
							
							{
								"f9965f5d-f012-b35e-9608-16c71c1f16d5",
								true,
							},
							
							{
								"3b540a18-78e3-4a5d-a241-35fcde32d01d",
								true,
							},
						},
						endIfUsed = true,
						gVar = "ACR_RikuWHM2_Healbar_Esuna",
						name = "Esuna",
						targetType = "Detection Target",
						uuid = "c78c79c2-c499-5b38-8963-29a995cb29e5",
						variableIsHover = true,
						variableTogglesType = 3,
						version = 2,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return AnyoneCore.assistCallback()",
						dequeueIfLuaFalse = true,
						name = "bot is running",
						uuid = "edcc1275-25da-5465-938b-4e845433a73c",
						version = 2,
					},
					inheritedIndex = 1,
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return Leta.settings.Toggles[\"Heal\"].bool",
						dequeueIfLuaFalse = true,
						name = "Toggle Heal",
						uuid = "3c0fa940-21e7-ac52-8820-24657d09e8c1",
						version = 2,
					},
					inheritedIndex = 2,
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return Leta.settings.Toggles[\"Esuna\"].bool",
						dequeueIfLuaFalse = true,
						name = "Toggle Esuna",
						uuid = "fd5a16fc-84ae-1c7c-a0de-897a3ddee173",
						version = 2,
					},
					inheritedIndex = 3,
				},
				
				{
					data = 
					{
						buffCheckType = 4,
						buffIDList = 
						{
							723,
							6,
							7,
							14,
							15,
							17,
							267,
							268,
							1511,
							910,
							2965,
							569,
						},
						category = "Lua",
						conditionLua = "local target = TensorCore.mGetEntity(eventArgs.detectionTargetID)\nif target then\n\tfor id, b in pairs(target.buffs) do\n\t\tif b.dispellable and b.duration >= 2 then\n\t\t\tdata.lastdispeltarget = target.id\n\t\t\tdata.lastdispel = Now()\n\t\t\treturn true\n\t\tend\n\tend\nend\nreturn false",
						matchAnyBuff = true,
						name = "Dispellable Buff",
						partyTargetSubType = "Number",
						partyTargetType = "Detection Target",
						uuid = "5d750e54-f2ea-2f02-8ce2-7b5e3695a8a5",
						version = 2,
					},
				},
				
				{
					data = 
					{
						category = "Party",
						comparator = 2,
						conditionType = 4,
						inRangeValue = 30,
						name = "30y",
						partyTargetSubType = 1,
						partyTargetType = "Detection Target",
						uuid = "29311d7b-57b6-edc3-8022-5f55bea693be",
						version = 2,
					},
				},
				
				{
					data = 
					{
						buffCheckType = 2,
						buffID = 167,
						category = "Self",
						dequeueIfLuaFalse = true,
						name = "Buff - Swiftcast",
						uuid = "f9965f5d-f012-b35e-9608-16c71c1f16d5",
						version = 2,
					},
					inheritedIndex = 6,
				},
				
				{
					data = 
					{
						category = "Filter",
						conditions = 
						{
							
							{
								"29311d7b-57b6-edc3-8022-5f55bea693be",
								true,
							},
							
							{
								"5d750e54-f2ea-2f02-8ce2-7b5e3695a8a5",
								true,
							},
						},
						dequeueIfLuaFalse = true,
						filterTargetType = "Party",
						name = "Filter",
						uuid = "3b540a18-78e3-4a5d-a241-35fcde32d01d",
						version = 2,
					},
				},
			},
			name = "Esuna",
			throttleTime = 1250,
			timeout = 3,
			uuid = "9548b568-fd42-791b-a2a7-6b9a4ed1b608",
			version = 2,
		},
		inheritedIndex = 32,
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "if Leta == nil then\n    Leta = {}\nend\nif Leta.init ~= true then\n    Leta.lastTick = Now()\n\n    Leta.GUI = {\n        open = false,\n        visible = false\n    }\n    Leta.settings = {\n        LockedToggles = false,\n        ToggleColorEnable = {r = 0.631, g = 0.186, b = 0.217, a = 1.000},\n        ToggleColorDisable = {r = 0.070, g = 0.070, b = 0.070, a = .749},\n\t\t\t\t\t\t\t\tToggleBGAlpha = 0.45,\n        ToggleScale = 1,\n        ToggleHeight = 30,\n        ToggleWidth = 105,\n        Toggles = {\n            --global\n            [\"AOE\"] = {bool = true, shown = true, group = 2, job = \"global\"},\n            [\"ST\"] = {bool = true, shown = true, group = 2, job = \"global\"},\n            [\"GCD\"] = {bool = true, shown = true, group = 2, job = \"global\"},\n            [\"Esuna\"] = {bool = true, shown = true, group = 2, job = \"global\"},\n            [\"Mitigation\"] = {bool = true, shown = true, group = 2, job = \"global\"},\n            [\"Heal\"] = {bool = true, shown = true, group = 2, job = \"global\"},\n            --whm\n            [\"Asylum\"] = {bool = false, shown = true, group = 1, job = \"WHM\"},\n            [\"Bell\"] = {bool = false, shown = true, group = 1, job = \"WHM\"},\n            [\"Benediction\"] = {bool = true, shown = true, group = 1, job = \"WHM\"},\n            [\"Temperance\"] = {bool = true, shown = true, group = 1, job = \"WHM\"},\n            [\"HOT\"] = {bool = true, shown = true, group = 1, job = \"WHM\"},\n\t\t\t\t\t\t\t\t\t\t\t\t[\"Solace\"] = {bool = true, shown = true, group = 1, job = \"WHM\"},\n\t\t\t\t\t\t\t\t\t\t\t\t[\"Rapture\"] = {bool = true, shown = true, group = 1, job = \"WHM\"},\n            --sage\n            [\"Haima\"] = {bool = true, shown = true, group = 1, job = \"SGE\"},\n\t\t\t\t\t\t\t\t\t\t\t\t[\"Holos\"] = {bool = true, shown = true, group = 1, job = \"SGE\"},\n            [\"Panhaima\"] = {bool = false, shown = true, group = 1, job = \"SGE\"},\n            [\"Pneuma\"] = {bool = true, shown = true, group = 1, job = \"SGE\"},\n            [\"Zoe\"] = {bool = true, shown = true, group = 1, job = \"SGE\"},\n            [\"Soteria\"] = {bool = true, shown = true, group = 1, job = \"SGE\"},\n            [\"Pneuma Opener\"] = {bool = false, shown = false, group = 1, job = \"SGE\"},\n            -- AST\n            [\"Macrocosmos\"] = {bool = false, shown = true, group = 1, job = \"AST\"},\n            [\"Neutral Sect\"] = {bool = true, shown = true, group = 1, job = \"AST\"},\n            [\"Synastry\"] = {bool = true, shown = true, group = 1, job = \"AST\"},\n            [\"Earthly Star\"] = {bool = false, shown = true, group = 1, job = \"AST\"},\n            [\"HoT\"] = {bool = true, shown = true, group = 1, job = \"AST\"},\n            [\"Horoscope\"] = {bool = true, shown = true, group = 1, job = \"AST\"},\n            --SCH\n            [\"Expedient\"] = {bool = true, shown = true, group = 1, job = \"SCH\"},\n            [\"Illumination\"] = {bool = true, shown = true, group = 1, job = \"SCH\"},\n            [\"Seraph\"] = {bool = true, shown = true, group = 1, job = \"SCH\"},\n            [\"D Tactics\"] = {bool = true, shown = true, group = 1, job = \"SCH\"},\n            [\"Sacred Soil\"] = {bool = false, shown = true, group = 1, job = \"SCH\"}\n        }\n    }\n\n    Leta.ModToKey = {\n        [\"SHIFT\"] = 16,\n        [\"CONTROL\"] = 17,\n        [\"ALT\"] = 18\n    }\n    Leta.JobTable = {\n        [6] = \"WHM\",\n        [24] = \"WHM\",\n        [28] = \"SCH\",\n        [26] = \"SCH\",\n        [33] = \"AST\",\n        [40] = \"SGE\"\n    }\n\n    Leta.LuaPath = GetLuaModsPath()\n    Leta.SettingsPath = Leta.LuaPath .. [[ffxivminion\\leta\\]]\n    Leta.SettingsFile = Leta.SettingsPath .. [[Settings.lua]]\n    local v = table.valid\n    function Leta.valid(...)\n        local tbl = {...}\n        local size = #tbl\n        if size > 0 then\n            local count = tbl[1]\n            if type(count) == \"number\" then\n                if size == (count + 1) then\n                    for i = 2, size do\n                        if not v(tbl[i]) then\n                            return false\n                        end\n                    end\n                    return true\n                end\n            else\n                for i = 1, size do\n                    if not v(tbl[i]) then\n                        return false\n                    end\n                end\n                return true\n            end\n        end\n        return false\n    end\n    local valid = Leta.valid\n\n    function Leta.LoadSettings()\n        if (not FolderExists(Leta.SettingsPath)) then\n            FolderCreate(Leta.SettingsPath)\n        end\n        local tbl = FileLoad(Leta.SettingsFile)\n        local function scan(tbl, tbl2, depth)\n            depth = depth or 0\n            if valid(2, tbl, tbl2) then\n                for k, v in pairs(tbl2) do\n                    if type(v) == \"table\" then\n                        if tbl[k] and valid(tbl[k]) then\n                            tbl[k] = table.merge(tbl[k], scan(tbl[k], v, depth + 1))\n                        else\n                            tbl[k] = v\n                        end\n                    else\n                        if tbl[k] ~= tbl2[k] then\n                            tbl[k] = tbl2[k]\n                        end\n                    end\n                end\n            end\n            return tbl\n        end\n        Leta.settings = scan(Leta.settings, tbl)\n    end\n\n    function Leta.SaveSettings()\n        d(\"[Leta] Settings saved\")\n        if not table.deepcompare(Leta.settings, PreviousSave) then\n            if (not FolderExists(Leta.SettingsPath)) then\n                FolderCreate(Leta.SettingsPath)\n            end\n\n            FileSave(Leta.SettingsFile, Leta.settings)\n            PreviousSave = table.deepcopy(Leta.settings)\n        end\n    end\n    Leta.LoadSettings()\n    Leta.init = true\n\n    -- Define the variable to remove\n    local variableToRemove = \"Lilies\"\n\n    -- Function to remove the entry from the Toggles table\n    local function removeEntry(table, variable)\n        if table and table.Toggles then\n            table.Toggles[variable] = nil\n        end\n    end\n\n    removeEntry(Leta.settings, variableToRemove)\n\n    -- Save the modified settings (if needed)\n    Leta.SaveSettings()\n\nend\nself.used = true\n",
						conditions = 
						{
							
							{
								"1d38aceb-831a-88f5-8452-17c4b312c663",
								false,
							},
						},
						gVar = "ACR_RikuAST2_CD",
						name = "Init",
						uuid = "be19cab4-1f6d-bf2f-9928-e3acf5ba49c3",
						version = 2,
					},
				},
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local scale = Leta.settings.ToggleScale\nif Leta ~= nil and Leta.init == true and table.valid(Leta.settings.Toggles) then\n    if TimeSince(Leta.lastTick) > 1000 then\n        for k, v in pairs(Leta.settings.Toggles) do\n            if v.job == Leta.JobTable[TensorCore.mGetPlayer().job] or v.job == \"global\" then\n                v.active = true\n            else\n                v.active = false\n            end\n        end\n        Leta.lastTick = Now()\n    end\n    for k, v in pairs(Leta.settings.Toggles) do\n        if v.group ~= 0 and v.shown and v.active then\n\n\n\n            GUI:SetNextWindowSize(0, 0, GUI.SetCond_Always)\n            local WinFlags\n            if Leta.settings.LockedToggles == true then\n                WinFlags =\n                    (GUI.WindowFlags_NoTitleBar + GUI.WindowFlags_AlwaysAutoResize + GUI.WindowFlags_NoScrollbar +\n                    GUI.WindowFlags_NoCollapse +\n                    GUI.WindowFlags_NoMove)\n            else\n                WinFlags =\n                    (GUI.WindowFlags_NoTitleBar + GUI.WindowFlags_AlwaysAutoResize + GUI.WindowFlags_NoScrollbar +\n                    GUI.WindowFlags_NoCollapse)\n            end\n            GUI:PushStyleColor(GUI.Col_WindowBg, 0.070, 0.070, 0.070, Leta.settings.ToggleBGAlpha or 0.45)\n\n            GUI:Begin(\"LetaToggles\" .. v.group, true, WinFlags)\n            GUI:PopStyleColor()\n\n            GUI:SetWindowFontSize(scale)\n\n            if v.shown == true then\n                local ChildColorTogglesTable = {}\n                if v.bool ~= true then\n                    ChildColorTogglesTable = {\n                        r = Leta.settings.ToggleColorDisable.r,\n                        g = Leta.settings.ToggleColorDisable.g,\n                        b = Leta.settings.ToggleColorDisable.b,\n                        a = Leta.settings.ToggleColorDisable.a\n                    }\n                else\n                    ChildColorTogglesTable = {\n                        r = Leta.settings.ToggleColorEnable.r,\n                        g = Leta.settings.ToggleColorEnable.g,\n                        b = Leta.settings.ToggleColorEnable.b,\n                        a = Leta.settings.ToggleColorEnable.a\n                    }\n                end\n                GUI:PushStyleVar(GUI.StyleVar_ChildWindowRounding, 5)\n                GUI:PushStyleVar(GUI.StyleVar_ItemSpacing, 3, 3)\n\n                GUI:PushStyleColor(\n                    GUI.Col_ChildWindowBg,\n                    ChildColorTogglesTable.r,\n                    ChildColorTogglesTable.g,\n                    ChildColorTogglesTable.b,\n                    ChildColorTogglesTable.a\n                )\n\n                local strlenght = GUI:CalcTextSize(k)\n                local btnWidth = Leta.settings.ToggleWidth\n                local btnHeight = Leta.settings.ToggleHeight\n                local btnSpacing = GUI:GetTextLineHeightWithSpacing()\n                GUI:BeginChild(k .. \"##extra1\", btnWidth, btnHeight, false, GUI.WindowFlags_AlwaysAutoResize)\n                GUI:SetWindowFontSize(scale)\n                GUI:SetCursorPosX((btnWidth - strlenght) * 0.5)\n                GUI:SetCursorPosY((btnHeight - btnSpacing) * 0.5)\n\n                GUI:Text(k)\n                GUI:EndChild()\n\n                if (GUI:IsItemHovered()) then\n                    if (GUI:IsMouseClicked(0)) then\n                        v.bool = not v.bool\n                        Leta.SaveSettings()\n                    end\n                    if GUI:IsMouseClicked(1) then\n                        Leta.GUI.open = not Leta.GUI.open\n                    --  Leta.SaveSettings()\n                    end\n                end\n                GUI:PopStyleColor()\n                GUI:PopStyleVar()\n                GUI:PopStyleVar()\n            end\n            GUI:End()\n        end\n    end\nend\nself.used = true\n",
						conditions = 
						{
							
							{
								"1d38aceb-831a-88f5-8452-17c4b312c663",
								true,
							},
						},
						gVar = "ACR_RikuAST2_CD",
						name = "Draw",
						uuid = "3c5ea42e-06f2-f5cd-a2cc-a784ae3aab27",
						version = 2,
					},
				},
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "if Leta.GUI.open then\n    GUI:SetNextWindowSize(280, 0, GUI.SetCond_Appearing)\n    Leta.GUI.visible, Leta.GUI.open = GUI:Begin(\"Leta Menu\", Leta.GUI.open)\n    if Leta.GUI.visible then\n        local changed\n        Leta.settings.LockedToggles, changed = GUI:Checkbox(GetString(\"Lock Toggles\"), Leta.settings.LockedToggles)\n        if changed then\n            Leta.SaveSettings()\n        end\n\n        GUI:Separator()\n\n        local width = GUI:GetContentRegionAvailWidth()\n        GUI:Dummy((width - 114), 0)\n        GUI:SameLine()\n        GUI:Text(\"[Mod]\")\n        GUI:SameLine()\n        GUI:Dummy((7), 0)\n        GUI:SameLine()\n        GUI:Text(\"+\")\n        GUI:SameLine()\n        GUI:Dummy(-10, 0)\n        GUI:SameLine()\n        GUI:Text(\"[Key]\")\n        if table.valid(Leta.settings.Toggles) then\n            for k, v in pairs(Leta.settings.Toggles) do\n                if v.job == Leta.JobTable[TensorCore.mGetPlayer().job] or v.job == \"global\" then\n                    local changed\n                    v.shown, changed = GUI:Checkbox(GetString(\"##\" .. k), v.shown)\n                    if changed then\n                        Leta.SaveSettings()\n                    end\n                    GUI:SameLine()\n\n                    if v.bool == true then\n                        GUI:TextColored(1, 1, 1, 1, k)\n                    else\n                        GUI:TextColored(1, 0, 0, 1, k)\n                    end\n\n                    if GUI:IsItemHovered() then\n                        if GUI:IsItemClicked(0) then\n                            v.bool = not v.bool\n                            Leta.SaveSettings()\n                        end\n                    end\n\n                    GUI:SameLine()\n                    local width = GUI:GetContentRegionAvailWidth()\n                    GUI:Dummy((width - 125), 0)\n                    GUI:SameLine()\n\n                    GUI:SameLine()\n                    local allowedKey\n                    v.modifier, allowedKey = GUI:Keybind(\"##LetaModifier\" .. k, v.modifier, 60)\n\n                    if (allowedKey == \"SHIFT\" or allowedKey == \"CONTROL\" or allowedKey == \"ALT\") then\n                        v.modifier = Leta.ModToKey[allowedKey]\n                    else\n                        v.modifier = 0\n                    end\n                    if GUI:IsItemClicked(1) then\n                        v.modifier = nil\n                    end\n                    GUI:SameLine()\n                    local width = GUI:GetContentRegionAvailWidth()\n                    GUI:Text(\"+\")\n                    GUI:SameLine()\n                    v.key = GUI:Keybind(\"##LetaKey\" .. k, v.key, 35)\n                    if GUI:IsItemClicked(1) then\n                        v.key = nil\n                    end\n                end\n            end\n        end\n        GUI:Button(\"Restore Defaults\")\n        if GUI:IsItemClicked(0) then\n            Leta.settings.Toggles = {}\n\n            Leta.SaveSettings()\n            Leta = nil\n        end\n        GUI:SameLine()\n        GUI:Dummy(width - 245, 0)\n        GUI:SameLine()\n        GUI:Button(\"Save Keybinds\", 110, 19)\n        if GUI:IsItemClicked(0) then\n            Leta.SaveSettings()\n            GUI:SetWindowSize(280, 0)\n        end\n        if GUI:CollapsingHeader(\"Customize##Leta##\") then\n            Leta.settings.ToggleScale =\n                GUI:SliderFloat(\"Text Scale##LetaScale##\", Leta.settings.ToggleScale, 0.1, 5, \"%.2f\", 1)\nLeta.settings.ToggleHeight = GUI:SliderFloat(\"Height##LetaHeight##\", Leta.settings.ToggleHeight, 1, 200, \"%.0f\", 1)\nLeta.settings.ToggleWidth = GUI:SliderFloat(\"Width##LetaWidth##\", Leta.settings.ToggleWidth, 1, 500, \"%.0f\", 1)\nLeta.settings.ToggleBGAlpha = GUI:SliderFloat(\"BG Alpha##LetaBGAlpha##\", Leta.settings.ToggleBGAlpha, 0, 1, \"%.3f\", 1)\nGUI:PushItemWidth(205)\n            Leta.settings.ToggleColorEnable.r,\n                Leta.settings.ToggleColorEnable.g,\n                Leta.settings.ToggleColorEnable.b,\n                Leta.settings.ToggleColorEnable.a,\n                changed =\n                GUI:ColorEdit4(\n                \"Enabled##leta##\",\n                Leta.settings.ToggleColorEnable.r,\n                Leta.settings.ToggleColorEnable.g,\n                Leta.settings.ToggleColorEnable.b,\n                Leta.settings.ToggleColorEnable.a,\n                GUI.ColorEditMode_RGB\n            )\n\n            Leta.settings.ToggleColorDisable.r,\n                Leta.settings.ToggleColorDisable.g,\n                Leta.settings.ToggleColorDisable.b,\n                Leta.settings.ToggleColorDisable.a,\n                changed =\n                GUI:ColorEdit4(\n                \"Disabled##leta##\",\n                Leta.settings.ToggleColorDisable.r,\n                Leta.settings.ToggleColorDisable.g,\n                Leta.settings.ToggleColorDisable.b,\n                Leta.settings.ToggleColorDisable.a,\nGUI.ColorEditMode_RGB\n                \n            )\nGUI:PopItemWidth()\n            if GUI:Button(\"Reset Customization##LetaColors\") then\n                Leta.settings.ToggleColorEnable = {r = 0.631, g = 0.186, b = 0.217, a = 1.000}\n                Leta.settings.ToggleColorDisable = {r = 0.070, g = 0.070, b = 0.070, a = .749}\n                Leta.settings.ToggleScale = 1\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tLeta.settings.ToggleHeight = 30\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tLeta.settings.ToggleWidth = 105\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tLeta.settings.ToggleBGAlpha = 0.45\n                Leta.SaveSettings()\n            end\n            GUI:SameLine()\n            GUI:Dummy(0, 0)\n            GUI:SameLine()\n            if GUI:Button(\"Save##LetaColors\") then\n                Leta.SaveSettings()\n            end\n        end\n        GUI:SetWindowSize(280, 0)\n    end\n\n    GUI:End()\nend\n",
						conditions = 
						{
							
							{
								"1d38aceb-831a-88f5-8452-17c4b312c663",
								true,
							},
						},
						gVar = "ACR_RikuAST2_CD",
						name = "Menu",
						uuid = "0e9b1755-ef8a-4a48-bbf9-ea005b5b9759",
						version = 2,
					},
				},
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "for k, v in pairs(Leta.settings.Toggles) do\n    if Leta.GUI.open then\n        if v.key ~= nil and (v.modifier ~= nil or v.modifier > 0) then\n            v.hasModifier = true\n        end\n        if v.key ~= nil and (v.modifier == nil or v.modifier == 0) then\n            v.hasModifier = false\n        end\n    end\n\n    if v.hasModifier ~= true then\n        if\n            v.active and GUI:IsKeyPressed(v.key, false) and not GUI:IsKeyDown(16) and not GUI:IsKeyDown(17) and\n                not GUI:IsKeyDown(18)\n         then\n            v.bool = not v.bool\n        end\n    end\n    if v.hasModifier == true then\n        if v.active and GUI:IsKeyPressed(v.key, false) and GUI:IsKeyDown(v.modifier) then\n            v.bool = not v.bool\n        end\n    end\nend\n",
						conditions = 
						{
							
							{
								"1d38aceb-831a-88f5-8452-17c4b312c663",
								true,
							},
						},
						gVar = "ACR_RikuAST2_CD",
						name = "Keypress",
						uuid = "7e8bc270-e5cd-d027-91f6-ebd5e29d56bd",
						version = 2,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return Leta ~= nil",
						uuid = "1d38aceb-831a-88f5-8452-17c4b312c663",
						version = 2,
					},
				},
			},
			eventType = 13,
			name = "Toggles",
			uuid = "649ab9ea-5d12-7cd3-adc9-70ad3ca84884",
			version = 2,
		},
		inheritedIndex = 33,
	},
	
	{
		data = 
		{
			actions = 
			{
			},
			conditions = 
			{
			},
			enabled = false,
			name = "--Version Number",
			uuid = "29b89457-b966-ea53-a080-ec75b4c87f4e",
			version = 2,
		},
		inheritedIndex = 34,
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "letaVersion = \"5.4.7.1\"\nd(\"Leta's reactions \" .. letaVersion .. \" loaded.\")\nself.used = true",
						conditions = 
						{
							
							{
								"8d72527b-8ee0-5fbf-b774-dfe95cd7dcac",
								true,
							},
						},
						gVar = "ACR_RikuWHM2_CD",
						uuid = "f96a0929-c656-8277-b4c0-8fe992e106c2",
						version = 2,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return letaVersion == nil",
						dequeueIfLuaFalse = true,
						uuid = "8d72527b-8ee0-5fbf-b774-dfe95cd7dcac",
						version = 2,
					},
				},
			},
			name = "v5.4.7.1",
			uuid = "9570df5c-4066-44ad-852c-c4c9993eca8f",
			version = 2,
		},
		inheritedIndex = 35,
	},
	
	{
		data = 
		{
			name = "n/a",
			uuid = "4555a084-8304-5ed2-9eba-b620f8372c0a",
			version = 2,
		},
		inheritedIndex = 36,
		inheritedObjectUUID = "dcec4734-df1d-e575-90af-afd363c2a735",
		inheritedOverwrites = 
		{
			actions = 
			{
				
				{
					type = "remove",
					value = 
					{
						data = 
						{
							name = "cancel prepull helper",
							uuid = "cf5d77c9-441e-158b-a74b-f9a92a68a115",
							version = 2,
						},
						inheritedObjectUUID = "451a1cc6-ace3-1170-96e9-aeff38c3affb",
						inheritedOverwrites = 
						{
							conditions = 
							{
								
								{
									type = "remove",
									value = 
									{
										"50124129-980a-3a46-b291-5a37b9f25ce2",
										true,
									},
								},
								
								{
									type = "add",
									value = 
									{
										"979de1fd-6b74-f449-9106-6d0c5c66619c",
										true,
									},
								},
							},
						},
					},
				},
				
				{
					type = "remove",
					value = 
					{
						data = 
						{
							name = "end reaction",
							uuid = "cf944115-e2e4-32db-af73-2cfb2d8b8824",
							version = 2,
						},
						inheritedObjectUUID = "dab7f400-ecf4-4294-a745-e2f7ac5a1b22",
						inheritedOverwrites = 
						{
						},
					},
				},
				
				{
					type = "remove",
					value = 
					{
						data = 
						{
							name = "enable start combat",
							uuid = "508f60d2-7cc3-8605-b12c-36bb840d1513",
							version = 2,
						},
						inheritedObjectUUID = "acd6dbc0-16e7-981a-a0e6-d73faa863359",
						inheritedOverwrites = 
						{
						},
					},
				},
				
				{
					type = "remove",
					value = 
					{
						data = 
						{
							name = "",
							uuid = "f60c024b-a8d2-1fd4-97c3-3a3fdfcb08bd",
							version = 2,
						},
						inheritedObjectUUID = "acd45248-dd1d-b683-829a-1a852efbb11c",
					},
				},
				
				{
					type = "remove",
					value = 
					{
						data = 
						{
							name = "",
							uuid = "64d1134c-b8d8-741e-ba07-08ff9151f730",
							version = 2,
						},
						inheritedObjectUUID = "c5464876-939e-a612-99c9-88099e6a26a4",
					},
				},
				
				{
					type = "remove",
					value = 
					{
						data = 
						{
							name = "target nearest",
							uuid = "14c913c7-a5aa-4c6a-afd5-12e3e3f6e21a",
							version = 2,
						},
						inheritedObjectUUID = "b0e66759-e311-9c80-a57f-2e93ff99d4d1",
					},
				},
			},
			conditions = 
			{
				
				{
					type = "remove",
					value = 
					{
						data = 
						{
							name = "is countdown cancelled",
							uuid = "32b04a46-1fb8-47ab-8cdd-76e253d7aa7a",
							version = 2,
						},
						inheritedObjectUUID = "50124129-980a-3a46-b291-5a37b9f25ce2",
						inheritedOverwrites = 
						{
						},
					},
				},
				
				{
					type = "remove",
					value = 
					{
						data = 
						{
							name = "glare timer",
							uuid = "8bdc2cb4-a3b9-2701-8aa8-c5bb21b2717d",
							version = 2,
						},
						inheritedObjectUUID = "a962d9e7-4b65-edcd-9471-ef375fc9f1d2",
						inheritedOverwrites = 
						{
						},
					},
				},
				
				{
					type = "remove",
					value = 
					{
						data = 
						{
							name = "pot timer",
							uuid = "a5892f2b-5ec6-2362-9b90-6b7afb5a946d",
							version = 2,
						},
						inheritedObjectUUID = "158de54e-eb59-5356-ba1d-09ae0a4755b8",
						inheritedOverwrites = 
						{
						},
					},
				},
				
				{
					type = "remove",
					value = 
					{
						data = 
						{
							name = "target boss timer",
							uuid = "d598d26d-4fd6-78c8-926d-6ce6edaacf82",
							version = 2,
						},
						inheritedObjectUUID = "4838a5f2-e6ec-e56e-a71c-d5c8620b5353",
						inheritedOverwrites = 
						{
						},
					},
				},
				
				{
					type = "remove",
					value = 
					{
						data = 
						{
							name = "end reaction timer",
							uuid = "645a0c4a-ce08-2a62-8f74-7b43db5ed3c1",
							version = 2,
						},
						inheritedObjectUUID = "f52fcb09-9460-e051-9463-25c8bb0be180",
						inheritedOverwrites = 
						{
						},
					},
				},
				
				{
					type = "remove",
					value = 
					{
						data = 
						{
							name = "engage boss timer",
							uuid = "50cba011-79e7-7fa5-a39c-5a716b43c2ba",
							version = 2,
						},
						inheritedObjectUUID = "d6e5f76d-373f-5144-b6fa-a511c76c8e00",
						inheritedOverwrites = 
						{
						},
					},
				},
				
				{
					type = "remove",
					value = 
					{
						data = 
						{
							name = "is countdown started",
							uuid = "77d7b72f-9b5f-3fd4-af12-46507a6c5f44",
							version = 2,
						},
						inheritedObjectUUID = "61dd99a6-dbfa-3c58-a34e-b3221c0c3ca5",
						inheritedOverwrites = 
						{
						},
					},
				},
				
				{
					type = "remove",
					value = 
					{
						data = 
						{
							name = "is bot running",
							uuid = "ab20c7d9-3a9e-2a3e-98d8-78d3ea2cc283",
							version = 2,
						},
						inheritedObjectUUID = "f0635090-e89f-2ae2-844c-c7f30531ad49",
						inheritedOverwrites = 
						{
						},
					},
				},
			},
			enabled = false,
			name = "n/a",
		},
	}, 
	inheritedProfiles = 
	{
		"store\\anyone\\whitemage",
	},
}



return tbl