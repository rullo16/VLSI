import os
import subprocess
import time

def solve(cores, model, input_file, output_dir):
    # Construct the Minizinc command with Geocode solver and timeout of 3000000 milliseconds (30 seconds)
    command = f'minizinc --solver Geocode -p {cores} -t 3000000 {model} {input_file}'

    # Get the instance name from the input file path
    instance_name = os.path.basename(input_file)[:-4]  # Remove the extension
    output_file = os.path.join(output_dir, instance_name + '-out.txt')

    # Run the Minizinc command and capture the output
    with open(output_file, 'w+') as f:
        print(f'{output_file}:', end='\n', flush=True)
        start = time.time()
        subprocess.run(command.split(), stdout=f, stderr=subprocess.PIPE)
        passed_time = time.time() - start
        print(f'{passed_time * 1000:.1f} ms')

        # Write the elapsed time to the output file
        f.write('{}'.format(passed_time))

def main():
    cores = 1
    model = 'model.mzn'
    input_file = '../instances/ins-21.dzn'
    output_dir = "../out"

    solve(cores, model, input_file, output_dir)

if __name__ == '__main__':
    main()
