def main(*args, **kwargs):
    # Read Original
    acc_list = []
    with open("log/rep_accuracy.log", 'r') as f:
        lines = [l.replace("Accuracy -> ", "").replace("%", "").replace("\n", "") for l in f.readlines()]
        for acc in lines:
            acc_list.append(float(acc))
        f.close()
    
    print(f'Best  = ${max(acc_list)}')
    print(f'Worst = ${min(acc_list)}')
    print(f'Avg   = ${sum(acc_list) / len(acc_list)}')

if __name__ == "__main__":
    main()
