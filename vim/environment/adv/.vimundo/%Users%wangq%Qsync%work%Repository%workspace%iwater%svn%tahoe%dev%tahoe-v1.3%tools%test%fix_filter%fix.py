Vim�UnDo� )�>Ϥ�a1�� ����N��#O�B��m��%   !                                   Z�	    _�                      	        ����                                                                                                                                                                                                                                                                                                                                                             Z�    �       "          	traverse_all()�                			print "	Orphan device"�                		else:�                				print "	No data yet!"�                			else:�                ?				tahoe_db.update_device_data(device['id'], json.dumps(data))�                *				print "	Total purified: %d" % purified�                /				print "	Latest data: %s" % json.dumps(data)�                			if latest_data:�                				data['event']['filterStatus']['filterList'][i]['life'] = data['event']['filterStatus']['filterList'][i]['base'] - fix_value�                Q				fix_value = purified % data['event']['filterStatus']['filterList'][i]['base']�                			for i in range(0, 5):�                ,			data['event']['waterPurified'] = purified�                			# fix purified water volume�                !			data = json.loads(latest_data)�                7			latest_data = tahoe_db.get_device_data(device['id'])�                >			purified = tahoe_db.get_device_purified_water(device['id'])�                			#print "	Device:", device�                		if device:�   
             .		device = tahoe_db.get_device(profile['mac'])�   	             F		print "MAC: %s, hash_key:%s" % (profile['mac'], profile['hash_key'])�      
          &	for profile in ks.get_all_profiles():5��