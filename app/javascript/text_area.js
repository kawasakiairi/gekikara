document.addEventListener('DOMContentLoaded', function() {
    const textArea = document.getElementById('rating_text_area');
    const textCharCount = document.getElementById('text_char_count');
    const maxTextLength = textArea.getAttribute('text_maxlength');

    textArea.addEventListener('input', function() {
        const currentTextLength = textArea.value.length;
        textCharCount.textContent = `※あと${maxTextLength - currentTextLength}文字記入できます。`;
    });
});
