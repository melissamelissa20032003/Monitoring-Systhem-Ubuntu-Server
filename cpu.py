import math
import psutil

def collect_cpu():
    cpu_usage = math.floor(psutil.cpu_percent(interval=1))
    print(cpu_usage)
    return cpu_usage




if __name__ == "__main__":
      collect_cpu()
