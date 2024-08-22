document.addEventListener('DOMContentLoaded', function() {
    const fires = document.querySelectorAll('.spice-level i');
    console.log('Fires:', fires); // 追加
    fires.forEach((fire) => {
        fire.addEventListener('click', function() {
            const value = this.getAttribute('data-value');
            console.log('Clicked value:', value); // 追加
            fires.forEach((f) => {
                f.classList.remove('selected');
            });
            for (let i = 0; i < value; i++) {
                fires[i].classList.add('selected');
            }
            document.getElementById('spice_level_input').value = value; // フォームの隠しフィールドに値を設定
        });
    });
});