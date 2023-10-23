#defとfnの違い
# fn・・・強く型付けされたメモリセーフな振る舞いを強制
# def・・・pythonスタイルの動的な振る舞いを提供

#fnの引数はデフォルトで不変参照
fn add_im(x: Int, y: Int) -> Int:
    #x+=1   
    return x + y

#引数にミュータブルな参照を渡す（所有権は移動しない)
#関数内部での変更が呼び出し元の変数に直接反映される
fn add_mu(inout x: Int, inout y: Int) -> Int:
    x += 1
    return x + y

#引数に与えられた変数のコピーを作成し、そのコピーにも所有権を与える
fn set_fire(owned text: String) -> String:
    text += "🔥"
    return text

fn main():
    var a: String = "mojo"
    var b = set_fire(a)
    a += "mojo" #関数にはコピーされた値、そのため影響なし
    print(a)
    print(b)

    var c: String = "Hello"
    b = set_fire(c^) #コピーを作成せずに所有権を渡す→ｃは破棄
    #print(c)
    print(b)

