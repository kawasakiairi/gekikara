document.addEventListener('turbo:load', function() {
    const spiceLevelInput = document.getElementById('spice_level');
    const fires = document.querySelectorAll('.spice-level i');
    
    // 初期値の設定（編集時）
    if (spiceLevelInput && spiceLevelInput.value) {
        const initialValue = parseInt(spiceLevelInput.value);
        for (let i = 0; i < initialValue; i++) {
            fires[i].classList.add('selected');
        }
    }

    fires.forEach((fire) => {
        fire.addEventListener('click', function() {
            const value = this.getAttribute('data-value');
            fires.forEach((f) => {
                f.classList.remove('selected');
            });
            for (let i = 0; i < value; i++) {
                fires[i].classList.add('selected');
            }
            if (spiceLevelInput) spiceLevelInput.value = value;
        });
    });
});