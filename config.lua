Config = {}
Config.PatreonEmail = 'Your Patron Email' --Take authorization with your patreon email.
Config.SharedObjectName = 'esx:getSharedObject'

Config.BlackMoney = true

Config.ShowStreetName = true

Config.StartSell = 'startsell'
Config.StopSell = 'stopsell'

Config.PoliceRequired = false -- Set police requirement if need like Config.PoliceRequired = 2
Config.PoliceCallDealy = 8000
Config.PoliceAlertBlipTime = 60 --in sec
Config.Police = {
	[1] = 'police',
	[2] = 'sheriff',
}

Config.JobRequired = false -- Enable if you want to require jobs for selling
Config.RequiredJobs = {
	['unemployed'] = true,
	['miner'] = true,
}

Config.DrugDetail = {
	['Grove St'] = { --Enable ShowStreetName to see the name in F8 console
		[1] = {
			name = 'marijuana',
			label = 'Marijuana',
			price = {
				max = 320,
				min = 150,
			},
			quantity ={
				max = 6,
				min = 1,
			},
			policeAlert = 10 --Lower means high change to get police police alert. 0 is no police alert
		},
	},
	['Forum Dr'] = { --Enable ShowStreetName to see the name in F8 console
		[1] = {
			name = 'marijuana',
			label = 'Marijuana',
			price = {
				max = 320,
				min = 150,
			},
			quantity ={
				max = 6,
				min = 1,
			},
			policeAlert = 10 --Lower means high change to get police police alert. 0 is no police alert
		},
		[2] = {
			name = 'coke',
			label = 'Coke',
			price = {
				max = 320,
				min = 150,
			},
			quantity ={
				max = 6,
				min = 1,
			},
			policeAlert = 10 --Lower means high change to get police police alert. 0 is no police alert
		},
	},
	['Grove Street'] = { --Enable ShowStreetName to see the name in F8 console
		[1] = {
			name = 'marijuana',
			label = 'Marijuana',
			price = {
				max = 320,
				min = 150,
			},
			quantity ={
				max = 6,
				min = 1,
			},
			policeAlert = 10 --Lower means high change to get police police alert. 0 is no police alert
		},
	},
}