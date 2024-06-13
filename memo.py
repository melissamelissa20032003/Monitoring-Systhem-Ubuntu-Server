import psutil 

#def get_memory_info():
 #   memory_info = psutil.virtual_memory()
  #  total = memory_info.total
   # available = memory_info.available
    #used = memory_info.used 
    #percent = memory_info.percent


   # return{
    #        "total": total,
     #       "available": available,
      #      "used": used,
       #     "percent": percent
        #    }

    #memory_info = get_memory_info()
   # print("Total Memory:" , memory_info["total"])
   # print ("Available Memory:" , memory_info["available"])
   # print ("used Memory :" , memory_info["used"])
   # print ("Memory Usage Percentage :", memory_info["percent"])

#get_memory_info()

print(psutil.virtual_memory())

