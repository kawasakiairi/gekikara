document.addEventListener('turbo:load', function() {
    const titleField = document.getElementById('title_text_field');
    const titleCharCount = document.getElementById('title_char_count');
    
    if (!titleField || !titleCharCount) {
        console.warn('Required elements not found for title character count');
        return;
    }

    const maxTitleLength = parseInt(titleField.getAttribute('title_maxlength') || '20', 10);

    function updateCharCount() {
        const currentTitleLength = titleField.value.length;
        const remainingChars = Math.max(0, maxTitleLength - currentTitleLength);
        titleCharCount.textContent = `※あと${remainingChars}文字記入できます。`;
    }

    // 初期表示時のカウント更新
    updateCharCount();

    titleField.addEventListener('input', updateCharCount);
});