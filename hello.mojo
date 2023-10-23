#defとfnの違い
# fn・・・強く型付けされたメモリセーフな振る舞いを強制
# def・・・pythonスタイルの動的な振る舞いを提供
fn your_function(a: Int64, b: Int64):
    let c = a #イミュータブルだから値を変更することはできない

    if c != b:
        let d = b
        print(d)

fn main():
    your_function(2, 3)
