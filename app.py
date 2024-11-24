from flask import Flask, render_template, request

app = Flask(__name__)

@app.route('/')
def form():
    return render_template('form.html')

@app.route('/preview', methods=['POST'])
def preview():
    # Extract form data
    title = request.form.get('title')
    title_font_size = request.form.get('title_font_size')
    title_font_style = request.form.get('title_font_style')
    embed_code = request.form.get('embed_code')
    description = request.form.get('description')
    writer = request.form.get('writer')
    writer_url = request.form.get('writer_url')
    director = request.form.get('director')
    director_url = request.form.get('director_url')
    stars = request.form.getlist('stars[]')
    star_urls = request.form.getlist('star_urls[]')
    
    # Handle uploaded photos (if any)
    photos = request.files.getlist('photos')

    return render_template(
        'preview.html',
        title=title,
        title_font_size=title_font_size,
        title_font_style=title_font_style,
        embed_code=embed_code,
        description=description,
        writer=writer,
        writer_url=writer_url,
        director=director,
        director_url=director_url,
        stars=zip(stars, star_urls),
        photos=photos
    )

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000, debug=True)

