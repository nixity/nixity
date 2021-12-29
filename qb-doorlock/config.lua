QB = {}

QB.Doors = {
	--- door1 for pacific opened with security card B
	{
		objName = 'hei_v_ilev_bk_gate2_pris',
		objCoords  = vector3(261.83, 221.39, 106.41),
		textCoords = vector3(261.83, 221.39, 106.41),
		authorizedJobs = { 'police' },
		objYaw = -110.0,
		locking = false,
		locked = true,
		pickable = true,
		distance = 1.5,
		size = 2
	},
	--door2 for pacific opened with thermite right near the vault door
	{
		objName = 'hei_v_ilev_bk_safegate_pris',
		objCoords  = vector3(252.98, 220.65, 101.8),
		textCoords = vector3(252.98, 220.65, 101.8),
		authorizedJobs = { 'police' },
		objYaw = 160.0,
		locking = false,
		locked = true,
		pickable = false,
		distance = 1.5,
		size = 2
	},
	-- door3 for pacific opened with thermite after passing the door near vault
	{
		objName = 'hei_v_ilev_bk_safegate_pris',
		objCoords  = vector3(261.68, 215.62, 101.81),
		textCoords = vector3(261.68, 215.62, 101.81),
		authorizedJobs = { 'police' },
		objYaw = -110.0,
		locking = false,
		locked = true,
		pickable = false,
		distance = 1.5,
		size = 2
	},

	-- Paleto Door 1 opened with security card A
	{
		objName = 'v_ilev_cbankvaulgate01',
		objCoords  = vector3(-105.77, 6472.59, 31.81),
		textCoords = vector3(-105.77, 6472.59, 31.81),
		objYaw = 45.0,
		authorizedJobs = { 'police' },
		locking = false,
		locked = true,
		pickable = false,
		distance = 1.5,
		size = 2
	},
	-- Paleto Door 2 opened with thermite
	{
		objName = 'v_ilev_cbankvaulgate02',
		objCoords  = vector3(-106.26, 6476.01, 31.98),
		textCoords = vector3(-105.5, 6475.08, 31.99),
		objYaw = -45.0,
		authorizedJobs = { 'police' },
		locking = false,
		locked = true,
		pickable = true,
		distance = 1.5,
		size = 2
	},
	{
		textCoords = vector3(-441.63, 6011.65, 31.72),
		authorizedJobs = { 'police' },
		locking = false,
		locked = true,
		pickable = false,
		distance = 2.5,
		doors = {
			{
				objName = 'v_ilev_bk_door2',
				objYaw = -135.0,
				objCoords = vector3(-442.36, 6011.5, 31.72)
			},

			{
				objName = 'v_ilev_bk_door2',
				objYaw = -315.0,
				objCoords = vector3(-441.39, 6012.4, 31.72)
			}
		}
	},
	{
		textCoords = vector3(-443.65, 6016.09, 31.72),
		authorizedJobs = { 'police' },
		locking = false,
		locked = false,
		pickable = false,
		distance = 2.5,
		doors = {
			{
				objName = 'v_ilev_shrf2door',
				objYaw = -45.0,
				objCoords = vector3(-443.15, 6015.76, 31.72)
			},

			{
				objName = 'v_ilev_shrf2door',
				objYaw = -225.0,
				objCoords = vector3(-444.1, 6016.57, 31.72)
			}
		}
	},
	{
		textCoords = vector3(-448.72, 6007.5, 31.72),
		authorizedJobs = { 'police' },
		locking = false,
		locked = false,
		pickable = false,
		distance = 2.5,
		doors = {
			{
				objName = 'apa_v_ilev_ss_door8',
				objYaw = -45.0,
				objCoords = vector3(-448.12, 6007.19, 31.72)
			},

			{
				objName = 'apa_v_ilev_ss_door8',
				objYaw = -225.0,
				objCoords = vector3(-449.11, 6008.19, 31.72)
			}
		}
	},
	{
		objName = 'v_ilev_cd_entrydoor',
		objCoords  = vector3(-453.84, 6011.41, 31.72),
		textCoords = vector3(-453.84, 6011.41, 31.72),
		objYaw = 11.0,
		authorizedJobs = { 'police' },
		locking = false,
		locked = true,
		pickable = true,
		distance = 1.5,
		size = 2
	},
	{
		objName = 'v_ilev_ph_cellgate',
		objCoords  = vector3(-432.69, 5992.62, 31.72),
		textCoords = vector3(-432.69, 5992.62, 31.72),
		objYaw = -43.0,
		authorizedJobs = { 'police' },
		locking = false,
		locked = true,
		pickable = true,
		distance = 1.5,
		size = 2
	},
	{
		objName = 'v_ilev_ph_cellgate',
		objCoords  = vector3(-428.73, 5997.28, 31.72),
		textCoords = vector3(-428.73, 5997.28, 31.72),
		objYaw = -43.0,
		authorizedJobs = { 'police' },
		locking = false,
		locked = true,
		pickable = true,
		distance = 1.5,
		size = 2
	},
	{
		objName = 'v_ilev_ph_cellgate',
		objCoords  = vector3(-431.79, 6000.29, 31.72),
		textCoords = vector3(-431.79, 6000.29, 31.72),
		objYaw = -43.0,
		authorizedJobs = { 'police' },
		locking = false,
		locked = true,
		pickable = true,
		distance = 1.5,
		size = 2
	},
	{
		objName = 'v_ilev_fingate',
		objCoords  = vector3(-437.02, 5992.22, 31.72),
		textCoords = vector3(-437.02, 5992.22, 31.72),
		objYaw = -43.0,
		authorizedJobs = { 'police' },
		locking = false,
		locked = true,
		pickable = true,
		distance = 1.5,
		size = 2
	},
	{
		objName = 'v_ilev_gc_door01',
		objCoords  = vector3(-446.61, 6001.82, 31.72),
		textCoords = vector3(-446.61, 6001.82, 31.72),
		objYaw = -225.0,
		authorizedJobs = { 'police' },
		locking = false,
		locked = true,
		pickable = true,
		distance = 1.5,
		size = 2
	},
	{
		objName = 'v_ilev_gc_door01',
		objCoords  = vector3(-451.48, 6006.61, 31.84),
		textCoords = vector3(-451.48, 6006.61, 31.84),
		objYaw = -45.0,
		authorizedJobs = { 'police' },
		locking = false,
		locked = true,
		pickable = true,
		distance = 1.5,
		size = 2
	},
	{
		objName = 'v_ilev_cf_officedoor',
		objCoords  = vector3(-441.65, 6004.47, 31.72),
		textCoords = vector3(-441.65, 6004.47, 31.72),
		objYaw = 45.0,
		authorizedJobs = { 'police' },
		locking = false,
		locked = true,
		pickable = true,
		distance = 1.5,
		size = 2
	},
	{
		objName = 'v_ilev_cf_officedoor',
		objCoords  = vector3(-438.23, 6007.89, 31.72),
		textCoords = vector3(-438.23, 6007.89, 31.72),
		objYaw = 45.0,
		authorizedJobs = { 'police' },
		locking = false,
		locked = true,
		pickable = true,
		distance = 1.5,
		size = 2
	},
	{
		objName = 'v_ilev_rc_door2',
		objCoords  = vector3(-450.42, 6015.92, 31.72),
		textCoords = vector3(-450.42, 6015.92, 31.72),
		objYaw = 135.0,
		authorizedJobs = { 'police' },
		locking = false,
		locked = true,
		pickable = true,
		distance = 1.5,
		size = 2
	},
	------------------------------------------Always add new doors below this line for your bank robberies to work!!!---------------------------------

	{
		textCoords = vector3(434.81, -981.93, 30.89),
		authorizedJobs = { 'police' },
		locking = false,
		locked = false,
		pickable = false,
		distance = 2.5,
		doors = {
			{
				objName = 'gabz_mrpd_reception_entrancedoor',
				objYaw = -90.0,
				objCoords = vector3(434.7, -980.6, 30.8)
			},

			{
				objName = 'gabz_mrpd_reception_entrancedoor',
				objYaw = -269.0,
				objCoords = vector3(434.7, -983.2, 30.8)
			}
		}
	},
	{
		textCoords = vector3(488.0184, -1002.902, 30.78697),
		authorizedJobs = { 'police' },
		locking = false,
		locked = true,
		pickable = false,
		distance = 2.5,
		doors = {
			{
				objName = 'gabz_mrpd_door_03',
				objYaw = -180.0,
				objCoords = vector3(488.0184, -1002.902, 30.78697)
			},

			{
				objName = 'gabz_mrpd_door_03',
				objYaw = -360.0,
				objCoords = vector3(485.6133, -1002.902, 30.78697)
			}
		}
	},
	{
		textCoords = vector3(349.5573, -583.4991, 28.7969),
		authorizedJobs = { 'police' },
		locking = false,
		locked = true,
		pickable = false,
		distance = 2.5,
		doors = {
			{
				objName = 'v_ilev_cor_firedoorwide',
				objYaw = -180.0,
				objCoords = vector3(349.5573, -583.4991, 28.7969)
			},

			{
				objName = 'v_ilev_cor_firedoorwide',
				objYaw = -360.0,
				objCoords = vector3(349.9910, -582.3448, 28.7969)
			}
		}
	},
	{
		objName = 'gabz_mrpd_door_04',
		objYaw = 359.0,
		objCoords  = vector3(440.5201, -977.6011, 30.82319),
		textCoords = vector3(450.09, -986.92, 30.68),
		authorizedJobs = { 'police' },
		locking = false,
		locked = true,
		pickable = false,
		distance = 1.5,
	},
	{
		objName = 'gabz_mrpd_door_05',
		objYaw = 182.0,
		objCoords  = vector3(440.5201, -986.2335, 30.82319),
		textCoords = vector3(440.5201, -986.2335, 30.82319),
		authorizedJobs = { 'police' },
		locking = false,
		locked = true,
		pickable = false,
		distance = 1.5,
	},
	{
		objName = 'gabz_mrpd_door_05',
		objYaw = 271.0,
		objCoords  = vector3(458.6543, -990.6498, 30.82319),
		textCoords = vector3(458.6543, -990.6498, 30.82319),
		authorizedJobs = { 'police' },
		locking = false,
		locked = true,
		pickable = false,
		distance = 1.5,
	},
	{
		objName = 'gabz_mrpd_door_03',
		objYaw = 134.0,
		objCoords  = vector3(475.8323, -990.4839, 26.40548),
		textCoords = vector3(475.8323, -990.4839, 26.40548),
		authorizedJobs = { 'police' },
		locking = false,
		locked = true,
		pickable = false,
		distance = 1.5,
	},
	{
		objName = 'gabz_mrpd_door_02',
		objYaw = 224.0,
		objCoords  = vector3(458.0894, -995.5247, 30.82319),
		textCoords = vector3(458.0894, -995.5247, 30.82319),
		authorizedJobs = { 'police' },
		locking = false,
		locked = true,
		pickable = false,
		distance = 1.5,
	},
	{
		objName = 'gabz_mrpd_door_05',
		objYaw = 136.0,
		objCoords  = vector3(452.2663, -995.5254, 30.82319),
		textCoords = vector3(452.2663, -995.5254, 30.82319),
		authorizedJobs = { 'police' },
		locking = false,
		locked = true,
		pickable = false,
		distance = 1.5,
	},
	{
		objName = 'gabz_mrpd_door_01',
		objYaw = 90.0,
		objCoords  = vector3(479.06, -1003.173, 26.4065),
		textCoords = vector3(479.06, -1003.173, 26.4065),
		authorizedJobs = { 'police' },
		locking = false,
		locked = true,
		pickable = false,
		distance = 1.5,
	},
	{
		objName = 'gabz_mrpd_door_01',
		objYaw = 180.0,
		objCoords  = vector3(475.9539, -1006.938, 26.40639),
		textCoords = vector3(475.9539, -1006.938, 26.40639),
		authorizedJobs = { 'police' },
		locking = false,
		locked = true,
		pickable = false,
		distance = 1.5,
	},
	-- Rooftop
	{
		objName = 'gabz_mrpd_door_03',
		objYaw = 90.0,
		objCoords  = vector3(464.3086, -984.5284, 43.77124),
		textCoords = vector3(464.38, -983.64, 43.8),
		authorizedJobs = { 'police' },
		locking = false,
		locked = true,
		pickable = false,
		distance = 1.5,
	},
	-- Hallway to roof
	{
		objName = 'gabz_mrpd_door_04',
		objYaw = 270.0,
		objCoords  = vector3(458.6543, -976.8864, 30.82319),
		textCoords = vector3(458.6543, -976.8864, 30.82319),
		authorizedJobs = { 'police' },
		locking = false,
		locked = true,
		pickable = false,
		distance = 1.5,
	},
	-- Armory
	{
		objName = 'gabz_mrpd_door_03',
		objYaw = -270.0,
		objCoords  = vector3(479.28, -998.86, 30.69), 
		textCoords = vector3(479.28, -998.86, 30.69),
		authorizedJobs = { 'police' },
		locking = false,
		locked = true,
		pickable = false,
		distance = 1.5,
	},
	{
		objName = 'gabz_mrpd_door_03',
		objYaw = -180.0,
		objCoords  = vector3(487.4378, -1000.189, 30.78697), 
		textCoords = vector3(487.4378, -1000.189, 30.78697),
		authorizedJobs = { 'police' },
		locking = false,
		locked = true,
		pickable = false,
		distance = 1.5,
	},
	-- Captain Office
	{
		objName = 'gabz_mrpd_door_04',
		objYaw = -180.0,
		objCoords  = vector3(475.9539, -1010.819, 26.40639),
		textCoords = vector3(475.9539, -1010.819, 26.40639),
		authorizedJobs = { 'police' },
		locking = false,
		locked = true,
		pickable = false,
		distance = 1.5,
	},
	-- To downstairs (double doors)
	{
		textCoords = vector3(444.71, -989.43, 30.92),
		authorizedJobs = { 'police' },
		locking = false,
		locked = true,
		pickable = false,
		distance = 2.0,
		doors = {
			{
				objName = 'v_ilev_ph_gendoor005',
				objYaw = 180.0,
				objCoords = vector3(443.9, -989.0, 30.6)
			},

			{
				objName = 'v_ilev_ph_gendoor005',
				objYaw = 0.0,
				objCoords = vector3(445.3, -988.7, 30.6)
			}
		}
	},
	{
		textCoords = vector3(440.7392, -998.7462, 30.8153),
		authorizedJobs = { 'police' },
		locking = false,
		locked = true,
		pickable = false,
		distance = 2.0,
		doors = {
			{
				objName = 'gabz_mrpd_reception_entrancedoor',
				objYaw = 361.0,
				objCoords = vector3(440.7392, -998.7462, 30.8153)
			},

			{
				objName = 'gabz_mrpd_reception_entrancedoor',
				objYaw = 179.0,
				objCoords = vector3(443.0618, -998.7462, 30.8153)
			}
		}
	},
	{
		textCoords = vector3(455.8862, -972.2543, 30.81531),
		authorizedJobs = { 'police' },
		locking = false,
		locked = true,
		pickable = false,
		distance = 2.0,
		doors = {
			{
				objName = 'gabz_mrpd_reception_entrancedoor',
				objYaw = 361.0,
				objCoords = vector3(455.8862, -972.2543, 30.81531)
			},

			{
				objName = 'gabz_mrpd_reception_entrancedoor',
				objYaw = 179.0,
				objCoords = vector3(458.2087, -972.2543, 30.81531)
			}
		}
	},
	{
		textCoords = vector3(469.4406, -985.0313, 30.82319),
		authorizedJobs = { 'police' },
		locking = false,
		locked = true,
		pickable = false,
		distance = 2.0,
		doors = {
			{
				objName = 'gabz_mrpd_door_01',
				objYaw = 270.0,
				objCoords = vector3(469.4406, -985.0313, 30.82319)
			},

			{
				objName = 'gabz_mrpd_door_01',
				objYaw = 90.0,
				objCoords = vector3(469.4406, -987.4377, 30.82319)
			}
		}
	},
	{
		textCoords = vector3(471.3679, -1007.793, 26.40548),
		authorizedJobs = { 'police' },
		locking = false,
		locked = true,
		pickable = false,
		distance = 2.0,
		doors = {
			{
				objName = 'gabz_mrpd_door_02',
				objYaw = 270.0,
				objCoords = vector3(471.3679, -1007.793, 26.40548)
			},

			{
				objName = 'gabz_mrpd_door_02',
				objYaw = 90.0,
				objCoords = vector3(471.3758, -1010.198, 26.40548)
			}
		}
	},
	{
		textCoords = vector3(469.9274, -1000.544, 26.40548),
		authorizedJobs = { 'police' },
		locking = false,
		locked = true,
		pickable = false,
		distance = 2.0,
		doors = {
			{
				objName = 'gabz_mrpd_door_01',
				objYaw = 180.0,
				objCoords = vector3(469.9274, -1000.544, 26.40548)
			},

			{
				objName = 'gabz_mrpd_door_01',
				objYaw = 360.0,
				objCoords = vector3(467.5222, -1000.544, 26.40548)
			}
		}
	},
	{
		textCoords = vector3(471.3753, -985.0319, 26.40548),
		authorizedJobs = { 'police' },
		locking = false,
		locked = true,
		pickable = false,
		distance = 2.0,
		doors = {
			{
				objName = 'gabz_mrpd_door_04',
				objYaw = 270.0,
				objCoords = vector3(471.3753, -985.0319, 26.40548)
			},

			{
				objName = 'gabz_mrpd_door_05',
				objYaw = 270.0,
				objCoords = vector3(471.3753, -987.4374, 26.40548)
			}
		}
	},
	{
		textCoords = vector3(479.0624, -985.0323, 26.40548),
		authorizedJobs = { 'police' },
		locking = false,
		locked = true,
		pickable = false,
		distance = 2.0,
		doors = {
			{
				objName = 'gabz_mrpd_door_02',
				objYaw = 270.0,
				objCoords = vector3(479.0624, -985.0323, 26.40548)
			},

			{
				objName = 'gabz_mrpd_door_02',
				objYaw = 90.0,
				objCoords = vector3(479.0624, -987.4376, 26.40548)
			}
		}
	},
	{
		textCoords = vector3(482.0686, -997.91, 26.4065),
		authorizedJobs = { 'police' },
		locking = false,
		locked = true,
		pickable = false,
		distance = 2.0,
		doors = {
			{
				objName = 'gabz_mrpd_door_02',
				objYaw = 180.0,
				objCoords = vector3(482.0686, -997.91, 26.4065)
			},

			{
				objName = 'gabz_mrpd_door_02',
				objYaw = 360.0,
				objCoords = vector3(479.6638, -997.91, 26.4065)
			}
		}
	},
	--
	-- Mission Row Cells
	--
	-- Main Cells
	{
		objName = 'gabz_mrpd_cells_door',
		objYaw = 180.0,
		objCoords  = vector3(484.75, -1008.21, 26.27),
		textCoords = vector3(484.75, -1008.21, 26.7),
		authorizedJobs = { 'police' },
		locking = false,
		locked = true,
		pickable = false,
		distance = 1.0,
	},
	-- Cell 1
	{
		objName = 'gabz_mrpd_cells_door',
		objYaw = -90.0,
		objCoords  = vector3(476.6157, -1008.875, 26.48005),
		textCoords = vector3(476.6157, -1008.875, 26.48005),
		authorizedJobs = { 'police' },
		locking = false,
		locked = true,
		pickable = false,
		distance = 1.0,
	},
	-- Cell 2
	{
		objName = 'gabz_mrpd_cells_door',
		objYaw = 360.0,
		objCoords  = vector3(477.9126, -1012.189, 26.48005),
		textCoords = vector3(477.9126, -1012.189, 26.48005),
		authorizedJobs = { 'police' },
		locking = false,
		locked = true,
		pickable = false,
		distance = 1.0,
	},
	-- Cell 3
	{
		objName = 'gabz_mrpd_cells_door',
		objYaw = 360.0,
		objCoords  = vector3(480.9128, -1012.189, 26.48005),
		textCoords = vector3(480.9128, -1012.189, 26.48005),
		authorizedJobs = { 'police' },
		locking = false,
		locked = true,
		pickable = false,
		distance = 1.0,
	},
	{
		objName = 'gabz_mrpd_cells_door',
		objYaw = 360.0,
		objCoords  = vector3(483.9127, -1012.189, 26.48005),
		textCoords = vector3(483.9127, -1012.189, 26.48005),
		authorizedJobs = { 'police' },
		locking = false,
		locked = true,
		pickable = false,
		distance = 1.0,
	},
	{
		objName = 'gabz_mrpd_cells_door',
		objYaw = 360.0,
		objCoords  = vector3(486.9131, -1012.189, 26.48005),
		textCoords = vector3(486.9131, -1012.189, 26.48005),
		authorizedJobs = { 'police' },
		locking = false,
		locked = true,
		pickable = false,
		distance = 1.0,
	},
	{
		objName = 'gabz_mrpd_cells_door',
		objYaw = 180.0,
		objCoords  = vector3(481.0084, -1004.118 , 26.48005),
		textCoords = vector3(481.0084, -1004.118 , 26.48005),
		authorizedJobs = { 'police' },
		locking = false,
		locked = true,
		pickable = false,
		distance = 1.0,
	},
	-- To Back
	{
		objName = 'v_ilev_gtdoor',
		objYaw = 0.0,
		objCoords  = vector3(464.61, -1003.64, 24.98),
		textCoords = vector3(464.61, -1003.64, 24.98),
		authorizedJobs = { 'police' },
		locking = false,
		locked = true,
		pickable = false,
		distance = 1.0,
	},
	--
	-- Mission Row Back
	--
	-- Back (double doors)
	{
		textCoords = vector3(469.7743, -1014.406, 26.48382),
		authorizedJobs = { 'police' },
		locking = false,
		locked = true,
		pickable = false,
		distance = 2.5,
		doors = {
			{
				objName = 'gabz_mrpd_door_03',
				objYaw = 180.0,
				objCoords  = vector3(469.7743, -1014.406, 26.48382)
			},

			{
				objName = 'gabz_mrpd_door_03',
				objYaw = 360.0,
				objCoords  = vector3(467.3686, -1014.406, 26.48382)
			}
		}
	},
	-- Back Gate
	{
		objName = 'hei_prop_station_gate',
		objYaw = 90.0,
		objCoords  = vector3(488.8, -1017.2, 27.1),
		textCoords = vector3(488.8, -1020.2, 30.0),
		authorizedJobs = { 'police' },
		locking = false,
		locked = true,
		pickable = false,
		distance = 14.0,
		size = 2
	},
	{
		objName = 'gabz_mrpd_room13_parkingdoor',
		objYaw = -272.0,
		objCoords  = vector3(464.1566, -997.5093, 26.3707),
		textCoords = vector3(464.1566, -997.5093, 26.3707),
		authorizedJobs = { 'police' },
		locking = false,
		locked = true,
		pickable = false,
		distance = 1.0,
	},
	{
		objName = 'gabz_mrpd_room13_parkingdoor',
		objYaw = -90.0,
		objCoords  = vector3(464.1591, -974.6656, 26.3707),
		textCoords = vector3(464.1591, -974.6656, 26.3707),
		authorizedJobs = { 'police' },
		locking = false,
		locked = true,
		pickable = false,
		distance = 1.0,
	},
	--
	-- Bolingbroke Penitentiary
	--
	-- Entrance (Two big gates)
	{
		objName = 'prop_gate_prison_01',
		objCoords  = vector3(1844.9, 2604.8, 44.6),
		textCoords = vector3(1844.9, 2608.5, 48.0),
		authorizedJobs = { 'police' },
		locking = false,
		locked = true,
		pickable = false,
		distance = 13,
		size = 2
	},
	{
		objName = 'prop_gate_prison_01',
		objCoords  = vector3(1818.5, 2604.8, 44.6),
		textCoords = vector3(1818.5, 2608.4, 48.0),
		authorizedJobs = { 'police' },
		locking = false,
		locked = true,
		pickable = false,
		distance = 13,
		size = 2
	},
	{
		objName = 'prop_gate_prison_01',
		objCoords = vector3(1799.237, 2616.303, 44.6),
		textCoords = vector3(1795.941, 2616.969, 48.0),
		authorizedJobs = { 'police' },
		locking = false,
		locked = true,
		pickable = false,
		distance = 10,
		size = 2
	},


	--outside doors
	{
		objName = 'prop_fnclink_03gate5',
		objCoords = vector3(1796.322, 2596.574, 45.565),
		textCoords = vector3(1796.322, 2596.574, 45.965),
		authorizedJobs = { 'police' },
		locking = false,
		locked = true,
		pickable = false,
		distance = 2.5,
		size = 2
	},
	{
		objName = 'v_ilev_gtdoor',
		objCoords = vector3(1821.677, 2477.265, 45.945),
		textCoords = vector3(1821.677, 2477.265, 45.945),
		authorizedJobs = { 'police' },
		locking = false,
		locked = true,
		pickable = false,
		distance = 2.5,
		size = 2
	},
	{
		objName = 'v_ilev_gtdoor',
		objCoords = vector3(1760.692, 2413.251, 45.945),
		textCoords = vector3(1760.692, 2413.251, 45.945),
		authorizedJobs = { 'police' },
		locking = false,
		locked = true,
		pickable = false,
		distance = 2.5,
		size = 2
	},
	{
		objName = 'v_ilev_gtdoor',
		objCoords = vector3(1543.58, 2470.252, 45.945),
		textCoords = vector3(1543.58, 2470.25, 45.945),
		authorizedJobs = { 'police' },
		locking = false,
		locked = true,
		pickable = false,
		distance = 2.5,
		size = 2
	},
	{
		objName = 'v_ilev_gtdoor',
		objCoords = vector3(1659.733, 2397.475, 45.945),
		textCoords = vector3(1659.733, 2397.475, 45.945),
		authorizedJobs = { 'police' },
		locking = false,
		locked = true,
		pickable = false,
		distance = 2.5,
		size = 2
	},
	{
		objName = 'v_ilev_gtdoor',
		objCoords = vector3(1537.731, 2584.842, 45.945),
		textCoords = vector3(1537.731, 2584.842, 45.945),
		authorizedJobs = { 'police' },
		locking = false,
		locked = true,
		pickable = false,
		distance = 2.5,
		size = 2
	},
	{
		objName = 'v_ilev_gtdoor',
		objCoords  = vector3(1571.964, 2678.354, 45.945),
		textCoords = vector3(1571.964, 2678.354, 45.945),
		authorizedJobs = { 'police' },
		locking = false,
		locked = true,
		pickable = false,
		distance = 2.5,
		size = 2
	},
	{
		objName = 'v_ilev_gtdoor',
		objCoords  = vector3(1650.18, 2755.104, 45.945),
		textCoords = vector3(1650.18, 2755.104, 45.945),
		authorizedJobs = { 'police' },
		locking = false,
		locked = true,
		pickable = false,
		distance = 2.5,
		size = 2
	},
	{
		objName = 'v_ilev_gtdoor',
		objCoords  = vector3(1771.98, 2759.98, 45.945),
		textCoords = vector3(1771.98, 2759.98, 45.945),
		authorizedJobs = { 'police' },
		locking = false,
		locked = true,
		pickable = false,
		distance = 2.5,
		size = 2
	},
	{
		objName = 'v_ilev_gtdoor',
		objCoords  = vector3(1845.7, 2699.79, 45.945),
		textCoords = vector3(1845.7, 2699.79, 45.945),
		authorizedJobs = { 'police' },
		locking = false,
		locked = true,
		pickable = false,
		distance = 2.5,
		size = 2
	},
	{
		objName = 'v_ilev_gtdoor',
		objCoords  = vector3(1820.68, 2621.95, 45.945),
		textCoords = vector3(1820.68, 2621.95, 45.945),
		authorizedJobs = { 'police' },
		locking = false,
		locked = true,
		pickable = false,
		distance = 2.5,
		size = 2
	},
	--
	-- Bolingbroke Extra
	--
	-- To Offices
	{
		objName = 'v_ilev_gtdoor',
		objYaw = 90.0,
		objCoords  = vector3(1819.129, 2593.64, 46.09929),
		textCoords = vector3(1843.3, 2579.39, 45.98),
		authorizedJobs = { 'police' },
		locking = false,
		locked = true,
		pickable = false,
		distance = 2.0,
		size = 2
	},

	-- To Changingroom
	{
		objName = 'v_ilev_gtdoor',
		objYaw = 360.0,
		objCoords  = vector3(1827.365, 2587.547, 46.09929),
		textCoords = vector3(1835.76, 2583.15, 45.95),
		authorizedJobs = { 'police' },
		locking = false,
		locked = true,
		pickable = false,
		distance = 2.0,
		size = 2
	},
	-- To CrimChangingroom
	{
		objName = 'v_ilev_gtdoor',
		objYaw = 90.0,
		objCoords  = vector3(1826.466, 2585.271, 46.09929),
		textCoords = vector3(1835.77, 2589.76, 45.95),
		authorizedJobs = { 'police' },
		locking = false,
		locked = true,
		pickable = false,
		distance = 1.0,
		size = 2
	},
	-- To CheckingRoom
	{
		objName = 'v_ilev_gtdoor',
		objYaw = 0.0,
		objCoords  = vector3(1827.521, 2583.905, 45.28576),
		textCoords = vector3(1828.638, 2584.675, 45.95233),
		authorizedJobs = { 'police' },
		locking = false,
		locked = true,
		pickable = false,
		distance = 2,
		size = 2
	},
	-- Checking Gate
	{
		objName = 'v_ilev_gtdoor',
		objYaw = 270.0,
		objCoords  = vector3(1837.714, 2595.185, 46.09929),
		textCoords = vector3(1837.714, 2595.185, 46.09929),
		authorizedJobs = { 'police' },
		locking = false,
		locked = true,
		pickable = false,
		distance = 1.5,
		size = 2
	},
	-- To CheckingRoomFromCheck
	{
		objName = 'v_ilev_gtdoor',
		objYaw = 90.0,
		objCoords  = vector3(1837.697, 2585.24, 46.09929),
		textCoords = vector3(1837.697, 2585.24, 46.09929),
		authorizedJobs = { 'police' },
		locking = false,
		locked = true,
		pickable = false,
		distance = 1.5,
		size = 2
	},
	-- To SecondCheckGate
	
	-- 58
	-- X:1845.198 Y:2585.24 Z:46.09929
	{
		objName = 'v_ilev_gtdoor',
		objYaw = 90.0,
		objCoords  = vector3(1845.198, 2585.24, 46.09929),
		textCoords = vector3(1845.198, 2585.24, 46.09929),
		authorizedJobs = { 'police' },
		locking = false,
		locked = false,
		pickable = false,
		distance = 1.5,
		size = 2
	},
	-- To MainHall
	{
		objName = 'v_ilev_ph_door002',
		objYaw = 90.0,
		objCoords  = vector3(1791.18, 2593.11, 546.15),
		textCoords = vector3(1791.18, 2593.11, 546.15),
		authorizedJobs = { 'police' },
		locking = false,
		locked = true,
		pickable = false,
		distance = 2.0,
		size = 2
	},
	-- To VisitorRoom
	{
		objName = 'prison_prop_door2',
		objYaw = 90.0,
		objCoords  = vector3(1784, 2599, 46),
		textCoords = vector3(1785.808, 2590.02, 44.79703),
		authorizedJobs = { 'police' },
		locking = false,
		locked = true,
		pickable = false,
		distance = 2.0,
		size = 2
	},
	{
		objName = 'prison_prop_door1',
		objYaw = 0.0,
		objCoords  = vector3(1786, 2600, 46),
		textCoords = vector3(1785.808, 2590.02, 44.79703),
		authorizedJobs = { 'police' },
		locking = false,
		locked = true,
		pickable = false,
		distance = 2.0,
		size = 2
	},
	{
		textCoords = vector3(1785.83, 2609.59, 45.99),
		authorizedJobs = { 'police' },
		locking = false,
		locked = true,
		pickable = false,
		distance = 2.5,
		doors = {
			{
				objName = 'prison_prop_door1',
				objYaw = 182.0,
				objCoords = vector3(1785, 2610, 46),	
			},

			{
				objName = 'prison_prop_door1a',
				objYaw = 0.0,
				objCoords = vector3(1787, 2610, 46),
			}
		}
	},
	{
		textCoords = vector3(1779.67, 2601.83, 50.71),
		authorizedJobs = { 'police' },
		locking = false,
		locked = true,
		pickable = false,
		distance = 2.5,
		doors = {
			{
				objName = 'prison_prop_door2',
				objYaw = 1.5,
				objCoords = vector3(1781, 2602, 51),	
			},

			{
				objName = 'prison_prop_door2',
				objYaw = 180.0,
				objCoords = vector3(1778, 2602, 51),
			}
		}
	},
	{
		objName = 'prison_prop_door2',
		objYaw = 0.0,
		objCoords  = vector3(1780, 2596, 51),
		textCoords = vector3(1785.808, 2590.02, 44.79703),
		authorizedJobs = { 'police' },
		locking = false,
		locked = true,
		pickable = false,
		distance = 2.0,
		size = 2
	},
	{
		objName = 'prison_prop_door1',
		objYaw = 0.0,
		objCoords  = vector3(1787, 2621, 46),
		textCoords = vector3(1785.808, 2590.02, 44.79703),
		authorizedJobs = { 'police' },
		locking = false,
		locked = true,
		pickable = false,
		distance = 2.0,
		size = 2
	},
	{
		objName = 'prison_prop_door2',
		objYaw = 270.0,
		objCoords  = vector3(1788, 2606, 51),
		textCoords = vector3(1785.808, 2590.02, 44.79703),
		authorizedJobs = { 'police' },
		locking = false,
		locked = true,
		pickable = false,
		distance = 2.0,
		size = 2
	},
	{
		textCoords = vector3(1791.08, 2593.76, 46.18),
		authorizedJobs = { 'police' },
		locking = false,
		locked = true,
		pickable = false,
		distance = 2.5,
		doors = {
			{
				objName = 'prison_prop_door1',
				objYaw = 272.0,
				objCoords = vector3(1791.1140136719, 2592.50390625, 46.3132473297119),		
			},

			{
				objName = 'prison_prop_door1a',
				objYaw = 90.0,
				objCoords = vector3(1791, 2595, 46),	
			}
		}
	},	
	-- To DoctorRoom
	{
		objName = 'v_ilev_ph_gendoor002',
		objYaw = 90.0,
		objCoords  = vector3(1786.4, 2579.8, 45.97),
		textCoords = vector3(1786.4, 2579.8, 45.97),
		authorizedJobs = { 'police' },
		locking = false,
		locked = true,
		pickable = false,
		distance = 1.0,
		size = 2
	},
	-- HallGate
	{
		objName = 'prison_prop_door2',
		objYaw = 0.0,
		objCoords  = vector3(1786, 2567, 46),
		textCoords = vector3(1778.91, 2568.91, 46.07),
		authorizedJobs = { 'police' },
		locking = false,
		locked = true,
		pickable = false,
		distance = 2.0,
		size = 2
	},
	-- HallGate 2
	{
		objName = 'prison_prop_door1',
		objYaw = 270.0,
		objCoords  = vector3(1792, 2551, 46),
		textCoords = vector3(1773.49, 2568.9, 46.07),
		authorizedJobs = { 'police' },
		locking = false,
		locked = true,
		pickable = false,
		distance = 2.0,
		size = 2
	},
	{
		textCoords = vector3( 1781.72, 2552.07, 49.57),
		authorizedJobs = { 'police' },
		locking = false,
		locked = true,
		pickable = false,
		distance = 2.5,
		doors = {
			{
				objName = 'prison_prop_door2',
				objYaw = 269.5,
				objCoords = vector3(1782, 2551, 50),		
			},

			{
				objName = 'prison_prop_door2',
				objYaw = 90.0,
				objCoords = vector3(1782, 2553, 50),	
			}
		}
	},	
	-- Gate To Work
	{
		objName = 'prison_prop_door2',
		objYaw = 90.0,
		objCoords  = vector3(1786, 2552, 50),
		textCoords = vector3(1760.89, 2578.51, 46.07),
		authorizedJobs = { 'police' },
		locking = false,
		locked = true,
		pickable = false,
		distance = 2.0,
		size = 2
	},
	-- Cell Maindoor
	{
		objName = 'prison_prop_door2',
		objYaw = 180.0,
		objCoords  = vector3(1785, 2550, 46),
		textCoords = vector3(1760.89, 2578.51, 46.07),
		authorizedJobs = { 'police' },
		locking = false,
		locked = true,
		pickable = false,
		distance = 2.0,
		size = 2
	},
	{
		objName = 'prison_prop_door1a',
		objYaw = 270.0,
		objCoords  = vector3(1776, 2551, 46),
		textCoords = vector3(1760.89, 2578.51, 46.07),
		authorizedJobs = { 'police' },
		locking = false,
		locked = true,
		pickable = false,
		distance = 2.0,
		size = 2
	},
	----------------
	-- Pacific Bank
	----------------
	-- First Door
	{
		objName = 'hei_v_ilev_bk_gate_pris',			
		objCoords  = vector3(257.41, 220.25, 106.4),
		textCoords = vector3(257.41, 220.25, 106.4),
		authorizedJobs = { 'police' },
		objYaw = -20.0,
		locking = false,
		locked = true,
		pickable = true,
		distance = 1.5,
		size = 2
	},
	-- Second Door
	
	-- Office to gate door
	{
		objName = 'v_ilev_bk_door',
		objCoords  = vector3(265.19, 217.84, 110.28),
		textCoords = vector3(265.19, 217.84, 110.28),
		authorizedJobs = { 'police' },
		objYaw = -20.0,
		locking = false,
		locked = true,
		pickable = true,
		distance = 1.5,
		size = 2
	},

	-- First safe Door
	

	----------------
	-- Fleeca Banks
	----------------
	-- Door 1
	{
		objName = 'v_ilev_gb_vaubar',
		objCoords  = vector3(314.61, -285.82, 54.49),
		textCoords = vector3(313.3, -285.45, 54.49),
		authorizedJobs = { 'police' },
		locking = false,
		locked = true,
		pickable = true,
		distance = 1.5,
		size = 2
	},
	-- Door 2
	{
		objName = 'v_ilev_gb_vaubar',
		objCoords  = vector3(148.96, -1047.12, 29.7),
		textCoords = vector3(148.96, -1047.12, 29.7),
		authorizedJobs = { 'police' },
		locking = false,
		locked = true,
		pickable = true,
		distance = 1.5,
		size = 2
	},
	-- Door 3
	{
		objName = 'v_ilev_gb_vaubar',
		objCoords  = vector3(-351.7, -56.28, 49.38),
		textCoords = vector3(-351.7, -56.28, 49.38),
		authorizedJobs = { 'police' },
		locking = false,
		locked = true,
		pickable = true,
		distance = 1.5,
		size = 2
	},
	-- Door 4
	{
		objName = 'v_ilev_gb_vaubar',
		objCoords  = vector3(-1208.12, -335.586, 37.759),
		textCoords = vector3(-1208.12, -335.586, 37.759),
		authorizedJobs = { 'police' },
		locking = false,
		locked = true,
		pickable = true,
		distance = 1.5,
		size = 2
	},
	-- Door 5
	{
		objName = 'v_ilev_gb_vaubar',
		objCoords  = vector3(-2956.18, 483.96, 16.02),
		textCoords = vector3(-2956.18, 483.96, 16.02),
		authorizedJobs = { 'police' },
		locking = false,
		locked = true,
		pickable = true,
		distance = 1.5,
		size = 2
	},

	-----
	-- Police front gate
	-----
	{
		objName = 'prop_facgate_07b',
		objYaw = -90.0,
		objCoords  = vector3(419.99, -1025.0, 28.99),
		textCoords = vector3(419.9, -1021.04, 30.5),
		authorizedJobs = { 'police' },
		locking = false,
		locked = true,
		pickable = false,
		distance = 20,
		size = 2
	},
	-----
	-- Luxury Cars
	-----
	-- Entrance Doors 
	{
		textCoords = vector3(-803.0223, -223.8222, 37.87975),
		authorizedJobs = { 'cardealer', 'police' },
		locking = false,
		locked = true,
		pickable = false,
		distance = 3.5,
		doors = {
			{
				objName = 'prop_doorluxyry2',
				objYaw = 120.0,
				objCoords = vector3(-803.0223, -222.5841, 37.87975)
			},

			{
				objName = 'prop_doorluxyry2',
				objYaw = -60.0,
				objCoords = vector3(-801.9622, -224.5203, 37.87975)			
			}
		}
	},	
	-- Side Entrance Doors 
	{
		textCoords = vector3(-777.1855, -244.0013, 37.333889),
		authorizedJobs = { 'cardealer', 'police' },
		locking = false,
		locked = true,
		pickable = false,
		distance = 3.5,
		doors = {
			{
				objName = 'prop_doorluxyry',				
				objYaw = -160.0,
				objCoords = vector3(-778.1855, -244.3013, 37.33388)
			},

			{
				objName = 'prop_doorluxyry',
				objYaw = 23.0,
				objCoords = vector3(-776.1591, -243.5013, 37.33388)				
			}
		}
	},	
	-- Garage Doors
	{
		textCoords = vector3(-768.1264, -238.9737, 37.43247),
		authorizedJobs = { 'cardealer', 'police' },
		locking = false,
		locked = true,
		pickable = false,
		distance = 13.0,
		doors = {
			{
				objName = 'prop_autodoor',
				objCoords = vector3(-770.6311, -240.0069, 37.43247)    
			},

			{
				objName = 'prop_autodoor',
				objCoords = vector3(-765.6217, -237.9405, 37.43247) 		
			}
		}
	},		
	----------------
	-- Pickle Rental
	----------------
	-- Front door 1
	{
		objName = 'apa_prop_apa_cutscene_doorb',
		objCoords  = vector3(-21.71276, -1392.778, 29.63847),		
		textCoords = vector3(-22.31276, -1392.778, 29.63847),
		authorizedJobs = { 'cardealer' },
		objYaw = -180.0,
		locking = false,
		locked = true,
		pickable = false,
		distance = 2.5,
		size = 2
	},	
	-- Front door 2
	{
		objName = 'apa_prop_apa_cutscene_doorb',
		objCoords  = vector3(-32.67987, -1392.064, 29.63847),		
		textCoords = vector3(-32.10987, -1392.064, 29.63847),
		authorizedJobs = { 'cardealer' },
		objYaw = 0.0,
		locking = false,
		locked = true,
		pickable = false,
		distance = 2.5,
		size = 2
	},	
	-- Door to cellar
	{
		objName = 'apa_prop_apa_cutscene_doorb',
		objCoords  = vector3(-24.22668, -1403.067, 29.63847),				
		textCoords = vector3(-24.22668, -1402.537, 29.63847),
		authorizedJobs = { 'cardealer' },
		objYaw = 90.0,
		locking = false,
		locked = true,
		pickable = false,
		distance = 1.5,
		size = 2
	},	
	-- Back door
	{
		objName = 'apa_prop_apa_cutscene_doorb',
		objCoords  = vector3(-21.27107, -1406.845, 29.63847),			
		textCoords = vector3(-21.27107, -1406.245, 29.63847),
		authorizedJobs = { 'cardealer' },
		objYaw = 90.0,
		locking = false,
		locked = true,
		pickable = false,
		distance = 2.0,
		size = 2
	},		
	-- Garage door
	{
		objName = 'prop_com_gar_door_01',
		objCoords  = vector3(-21.04025, -1410.734, 30.51094),			
		textCoords = vector3(-21.04025, -1410.734, 30.51094),
		authorizedJobs = { 'cardealer' },
		locking = false,
		locked = true,
		pickable = false,
		distance = 15.0,
		size = 2
	},
}
