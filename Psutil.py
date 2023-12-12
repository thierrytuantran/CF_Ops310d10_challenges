import psutil

def get_system_info():
    user_time = psutil.cpu_times().user
    kernel_time = psutil.cpu_times().system
    idle_time = psutil.cpu_times().idle
    priority_user_time = psutil.cpu_times().nice
    io_wait_time = psutil.cpu_times().iowait
    hardware_interrupt_time = psutil.cpu_times().irq
    software_interrupt_time = psutil.cpu_times().softirq
    steal_time = psutil.cpu_times().steal
    guest_time = psutil.cpu_times().guest

    print(f"Time spent by normal processes executing in user mode: {user_time} seconds")
    print(f"Time spent by processes executing in kernel mode: {kernel_time} seconds")
    print(f"Time when the system was idle: {idle_time} seconds")
    print(f"Time spent by priority processes executing in user mode: {priority_user_time} seconds")
    print(f"Time spent waiting for I/O to complete: {io_wait_time} seconds")
    print(f"Time spent for servicing hardware interrupts: {hardware_interrupt_time} seconds")
    print(f"Time spent for servicing software interrupts: {software_interrupt_time} seconds")
    print(f"Time spent by other operating systems running in a virtualized environment: {steal_time} seconds")
    print(f"Time spent running a virtual CPU for guest operating systems: {guest_time} seconds")

if __name__ == "__main__":
    get_system_info()
