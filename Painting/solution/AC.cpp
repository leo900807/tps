#include <iostream>
using namespace std;

int main() {
    ios::sync_with_stdio(0), cin.tie(0);
    int n, m;
    cin >> n >> m;
    cout << "1" + string(m - 1, '0') + "\n";
    for (int i = 1; i < n; ++i)
        cout << string(m, '0') << "\n";
}
