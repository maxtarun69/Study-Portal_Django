function previewImage(event) {
    var input = event.target;
    var reader = new FileReader();

    reader.onload = function() {
        var preview = document.getElementById('preview-image');
        preview.src = reader.result;
    };

    reader.readAsDataURL(input.files[0]);
}
