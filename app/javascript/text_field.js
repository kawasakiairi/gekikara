document.addEventListener('DOMContentLoaded', function() {
    const titleField = document.getElementById('title_text_field');
    const titleCharCount = document.getElementById('title_char_count');
    const maxTitleLength = titleField.getAttribute('title_maxlength');

    titleField.addEventListener('input', function() {
        const currentTitleLength = titleField.value.length;
        titleCharCount.textContent = `※あと${maxTitleLength - currentTitleLength}文字記入できます。`;
    });
});