txt_path = "../data/instances"
dzn_path = "../CP/instances"


for k in range(1, 41):
    output_filename = dzn_path + "/ins-" + str(k) + ".dzn"
    input_filename = txt_path + "/ins-" + str(k) + ".txt"

    with open(input_filename, 'r') as f_in:
        lines = f_in.read().splitlines()

        w = lines[0]
        n = lines[1]

        circuits = "[|"

        for i in range(int(n)):
            split = lines[i + 2].split(' ')
            circuits += f" {split[0]}, {split[1]} |\n\t\t\t\t\t\t "
        
        circuits = circuits.rstrip()
        circuits+= "]"


        with open(output_filename, 'w+') as f_out:
            f_out.write('w = {};\n'.format(w))
            f_out.write('n = {};\n'.format(n))

            f_out.write('circuits = {circuits};\n'.format(circuits=circuits))
