document.addEventListener('turbo:load', function() {
    initializeSpiceLevel();
});

function initializeSpiceLevel() {
    const spiceLevelInput = document.getElementById('spice_level');
    const fires = document.querySelectorAll('.spice-level i');

    // 初期値の設定（編集時）
    if (spiceLevelInput && spiceLevelInput.value) {
        const initialValue = parseInt(spiceLevelInput.value);
        updateSpiceLevel(initialValue);
    }

    fires.forEach((fire) => {
        fire.addEventListener('click', function() {
            const value = parseInt(this.getAttribute('data-value'));
            updateSpiceLevel(value);
            if (spiceLevelInput) spiceLevelInput.value = value;
        });
    });

    function updateSpiceLevel(level) {
        fires.forEach((f, index) => {
            if (index < level) {
                f.classList.add('selected');
                f.classList.remove('text-secondary');
            } else {
                f.classList.remove('selected');
                f.classList.add('text-secondary');
            }
        });
    }
}
