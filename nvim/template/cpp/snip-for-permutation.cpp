// nPnの順列に対して処理を実行する
void foreach_permutation(int n, std::function<void(int *)> f) {
    int indexes[n];
    for (int i = 0; i < n; i++) indexes[i] = i;
    do {
        f(indexes);
    } while (std::next_permutation(indexes, indexes + n));
}
