import os
from time import time
import subprocess

def solve(cores, model, input, output_dir):
    command = f'minizinc --solver Geocode -p {cores} -t 3000000 {model} {input}'

    instance_name = input.split('\\')[-1] if os.name == 'nt' else input.split('/')[-1]
    instance_name = instance_name[:len(instance_name)-4]
    output = os.path.join(output_dir, instance_name + '-out.txt')
    with open(output, 'w+') as f:
        print(f'{output}:', end='\n', flush=True)
        start = time()
        subprocess.run(command.split())
        passed_time = time()-start
        print(f'{passed_time * 1000:.1f} ms')
        if(passed_time *1000)<300000:
            subprocess.run(command.split(), stdout=f)
            f.write('{}'.format(passed_time))

def main():
    cores = 1
    model = 'model.mzn'
    input = '../instances/ins-21.dzn'
    output_dir = "../out"

    solve(cores,model,input,output_dir)

if __name__ == '__main__':
    main()
