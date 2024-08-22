document.addEventListener('turbo:load', function() {
    const textArea = document.getElementById('rating_text_area');
    const textCharCount = document.getElementById('text_char_count');
    
    if(!textArea || !textCharCount) {
        console.warn('Required elements not found for text character count');
        return;
    }
    
    const maxTextLength = parseInt(textArea.getAttribute('text_maxlength') || '200', 10);

    function updateCharCount() {
        const currentTextLength = textArea.value.length;
        const remainingChars = Math.max(0, maxTextLength - currentTextLength);
        textCharCount.textContent = `※あと${remainingChars}文字記入できます。`;
    }

    // 初期表示時のカウント更新
    updateCharCount();

    textArea.addEventListener('input', updateCharCount);
});