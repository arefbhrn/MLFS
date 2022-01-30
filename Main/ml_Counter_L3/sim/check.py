def main(*args, **kwargs):
    # Read Original
    acc_list = []
    with open("log/rep_accuracy.log", 'r') as f:
        lines = [l.replace("Accuracy -> ", "").replace("%", "").replace("\n", "") for l in f.readlines()]
        for acc in lines:
            acc_list.append(float(acc))
        f.close()
    
    best = max(acc_list)
    worst = min(acc_list)
    avg = sum(acc_list) / len(acc_list)
    
    print(f'Best  = {round(best, 2)}% -> Deg = {round(100 - best, 2)}%')
    print(f'Worst = {round(worst, 2)}% -> Deg = {round(100 - worst, 2)}%')
    print(f'Avg   = {round(avg, 2)}% -> Deg = {round(100 - avg, 2)}%')

if __name__ == "__main__":
    main()
