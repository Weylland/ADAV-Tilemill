@z12: 1;
@z13: 1.5;
@z14: 3.5;
@z15: 4.3;
@z16: 7.2;
@z17: 11.5;

Map {
	background-color: transparent;
}

#voiescyclables {
    line-join: round;
  	line-color: transparent;
  	[zoom<=12] { line-width: @z12; }
	[zoom=13] { line-width: @z13; }
	[zoom=14] { line-width: @z14; }
	[zoom=15] { line-width: @z15; }
	[zoom=16] { line-width: @z16; }
	[zoom>=17] { line-width: @z17; }

	/* Partagé piéton */
	[highway='pedestrian'] { 
			line-color: #66ccff;
			[zoom<=12] { line-dasharray: @z12 - 2, @z12*1.5; }
			[zoom=13] { line-dasharray: @z13 - 2, @z13*1.5; }
			[zoom=14] { line-dasharray: @z14 - 2, @z14*1.5; }
			[zoom=15] { line-dasharray: @z15 - 2, @z15*1.5; }
			[zoom=16] { line-dasharray: @z16 - 2, @z16*1.5; }
			[zoom>=17] { line-dasharray: @z17 - 2, @z17*1.5; }
     	['area'='yes'] {
      		line-opacity: 0;
    	}
	}
	/* piste */
	[highway='cycleway'],[cycleway='track'] {
			line-color: #009933;
    	['oneway'= 1] {
      		[zoom<=12] { line-offset: -1*(@z12)/2; line-width: @z12/2; }
			[zoom=13] { line-offset: -1*(@z13)/2; line-width: @z13/2; }
			[zoom=14] { line-offset: -1*(@z14)/2; line-width: @z14/2; }
			[zoom=15] { line-offset: -1*(@z15)/2; line-width: @z15/2; }
			[zoom=16] { line-offset: -1*(@z16)/2; line-width: @z16/2; }
			[zoom>=17] { line-offset: -1*(@z17)/2; line-width: @z17/2; }
    	}
	}
	/* Bande */
	[cycleway='lane'] { 
			line-color: #009933;
			[zoom<=12] { line-dasharray: @z12 - 2, @z12*1.5; }
			[zoom=13] { line-dasharray: @z13 - 2, @z13*1.5; }
			[zoom=14] { line-dasharray: @z14 - 2, @z14*1.5; }
			[zoom=15] { line-dasharray: @z15 - 2, @z15*1.5; }
			[zoom=16] { line-dasharray: @z16 - 2, @z16*1.5; }
			[zoom>=17] { line-dasharray: @z17 - 2, @z17*1.5; }
	}
	/* Dédié vélo */
	[highway='cycleway'] { 
		line-color: #007711;
	}
  	/* Voies vertes */
  	[highway='footway'] {
    	['bicycle'='designated'], ['bicycle'= 'yes'], ['bicycle'='permissive'] {
			line-color: #caa000;
			[zoom<=12] { line-dasharray: @z12 - 2, @z12*1.5; }
			[zoom=13] { line-dasharray: @z13 - 2, @z13*1.5; }
			[zoom=14] { line-dasharray: @z14 - 2, @z14*1.5; }
			[zoom=15] { line-dasharray: @z15 - 2, @z15*1.5; }
			[zoom=16] { line-dasharray: @z16 - 2, @z16*1.5; }
			[zoom>=17] { line-dasharray: @z17 - 2, @z17*1.5; }
		}
  	}
	[highway='path'] {
		['bicycle'='designated'], ['bicycle'= 'yes'] {
			line-color: #caa000;
			[zoom<=12] { line-dasharray: @z12 - 2, @z12*1.5; }
			[zoom=13] { line-dasharray: @z13 - 2, @z13*1.5; }
			[zoom=14] { line-dasharray: @z14 - 2, @z14*1.5; }
			[zoom=15] { line-dasharray: @z15 - 2, @z15*1.5; }
			[zoom=16] { line-dasharray: @z16 - 2, @z16*1.5; }
			[zoom>=17] { line-dasharray: @z17 - 2, @z17*1.5; }
			/*en dasharray les surfaces définis et sinon en continue */ 
			['surface'='paved'],['surface'='asphalt'],['surface'='compacted'],['surface'='concrete'],['surface'='concrete:lanes'],['surface'='paving_stones'],['surface'='concrete:plates'],['surface'='fine_gravel'] { 
				[zoom<=12] { line-dasharray: @z12 + 2, 0; }
				[zoom=13] { line-dasharray: @z13 + 2, 0; }
				[zoom=14] { line-dasharray: @z14 + 2, 0; }
				[zoom=15] { line-dasharray: @z15 + 2, 0; }
				[zoom=16] { line-dasharray: @z16 + 2, 0; }
				[zoom>=17] { line-dasharray: @z17 + 2, 0; }
			}
		}
	}
	[highway='track'] {
		['bicycle'='designated'], ['bicycle'= 'yes']{
			['tracktype'='grade1'] {
				['motor_vehicle'='agricultural'] {
					line-color: #caa000;
				}
			}
		}
	}
	[highway='track'], [highway='service'] {
		['bicycle'='designated'], ['bicycle'= 'yes']{
			['motor_vehicle'='destination'] {
				['operator'='VNF'] {
					line-color: #caa000;
				}
			}
		}
	}
    [highway='track'], [highway='service'] {
        ['bicycle'='designated'], ['bicycle'= 'yes']{
            ['motor_vehicle'='no'] {
                ['operator'='VNF'] {
                    ['access'='customers'] {
                        line-color: #66ccff;
                        [zoom<=12] { line-dasharray: @z12 - 2, @z12*1.5; }
                        [zoom=13] { line-dasharray: @z13 - 2, @z13*1.5; }
                        [zoom=14] { line-dasharray: @z14 - 2, @z14*1.5; }
                        [zoom=15] { line-dasharray: @z15 - 2, @z15*1.5; }
                        [zoom=16] { line-dasharray: @z16 - 2, @z16*1.5; }
                        [zoom>=17] { line-dasharray: @z17 - 2, @z17*1.5; }
                    }
                }
            }
        }
  	}
	/* Tous les contre-sens indiqués par des chevrons */
	[cycleway='opposite'] {
		marker-file: url('images/DSC_chevrons_vert_009933.svg');
		marker-placement: line;
		marker-opacity: 0.8;
		[zoom<=14] { marker-width: @z14; marker-spacing: @z14*1.5; }
		[zoom=15] { marker-width: @z15; marker-spacing: @z15*1.5; }
		[zoom=16] { marker-width: @z16; marker-spacing: @z16*1.5; }
		[zoom>=17] { marker-width: @z17; marker-spacing: @z17*1.5; }
	}

	/* Double sens cyclable avec bande */
	[cycleway='opposite_lane'] {
		[zoom<=12] { line-offset: @z12/2; line-width: @z12/2; line-dasharray: @z12 - 2, @z12*1.5; }
		[zoom=13] { line-offset: @z13/2; line-width: @z13/2; line-dasharray: @z13 - 2, @z13*1.5; }
		[zoom=14] { line-offset: @z14/2; line-width: @z14/2; line-dasharray: @z14 - 2, @z14*1.5; }
		[zoom=15] { line-offset: @z15/2; line-width: @z15/2; line-dasharray: @z15 - 2, @z15*1.5; }
		[zoom=16] { line-offset: @z16/2; line-width: @z16/2; line-dasharray: @z16 - 2, @z16*1.5; }
		[zoom>=17] { line-offset: @z17/2; line-width: @z17/2; line-dasharray: @z17 - 2, @z17*1.5; }
		line-color: #009933;
	}
	/* Double sens cyclable avec piste */
	[cycleway='opposite_track'] {
		[zoom<=12] { line-offset: @z12/2; line-width: @z12/2; }
		[zoom=13] { line-offset: @z13/2; line-width: @z13/2; }
		[zoom=14] { line-offset: @z14/2; line-width: @z14/2; }
		[zoom=15] { line-offset: @z15/2; line-width: @z15/2; }
		[zoom=16] { line-offset: @z16/2; line-width: @z16/2;  }
		[zoom>=17] { line-offset: @z17/2; line-width: @z17/2; }
		line-color: #009933;
	}
	/* Couloir de bus partagé */
    [cycleway='share_busway'] { 
              line-color: #99cc33;
    }
	[cycleway='opposite_share_busway'] {
		[zoom<=12] { line-offset: @z12/2; line-width: @z12/2; }
		[zoom=13] { line-offset: @z13/2; line-width: @z13/2; }
		[zoom=14] { line-offset: @z14/2; line-width: @z14/2; }
		[zoom=15] { line-offset: @z15/2; line-width: @z15/2; }
		[zoom=16] { line-offset: @z16/2; line-width: @z16/2;  }
		[zoom>=17] { line-offset: @z17/2; line-width: @z17/2; }
		line-color: #99cc33;
	}
}
