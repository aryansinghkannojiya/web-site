<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SneakerVerse - Step Into Future</title>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" rel="stylesheet">
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        :root {
            --primary-neon: #00d4ff;
            --secondary-neon: #ff00ff;
            --dark-bg: #0a0a0a;
            --glass-bg: rgba(255, 255, 255, 0.05);
            --shadow-neon: 0 0 20px rgba(0, 212, 255, 0.3);
        }

        body {
            font-family: 'Arial', sans-serif;
            background: linear-gradient(135deg, var(--dark-bg) 0%, #1a1a2e 50%, #16213e 100%);
            color: white;
            overflow-x: hidden;
        }

        /* Navbar */
        .navbar {
            position: fixed;
            top: 0;
            width: 100%;
            padding: 1rem 5%;
            background: rgba(10, 10, 10, 0.9);
            backdrop-filter: blur(10px);
            z-index: 1000;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .logo {
            font-size: 1.8rem;
            font-weight: bold;
            background: linear-gradient(45deg, var(--primary-neon), var(--secondary-neon));
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
        }

        .nav-links {
            display: flex;
            list-style: none;
            gap: 2rem;
        }

        .nav-links a {
            color: white;
            text-decoration: none;
            transition: all 0.3s ease;
        }

        .nav-links a:hover {
            color: var(--primary-neon);
            text-shadow: var(--shadow-neon);
        }

        .cart-icon {
            font-size: 1.5rem;
            cursor: pointer;
            position: relative;
        }

        .cart-count {
            position: absolute;
            top: -8px;
            right: -8px;
            background: var(--primary-neon);
            color: black;
            border-radius: 50%;
            width: 20px;
            height: 20px;
            font-size: 0.8rem;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        /* Hero Section */
        .hero {
            height: 100vh;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            text-align: center;
            position: relative;
            overflow: hidden;
        }

        .floating-shoe {
            width: 300px;
            height: 300px;
            background: linear-gradient(45deg, #ff6b6b, #4ecdc4, #45b7d1, #96ceb4);
            border-radius: 50%;
            position: relative;
            animation: float 6s ease-in-out infinite;
            margin-bottom: 2rem;
            box-shadow: var(--shadow-neon), 0 20px 40px rgba(0,0,0,0.3);
        }

        .floating-shoe::before {
            content: '👟';
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            font-size: 8rem;
            z-index: 2;
        }

        .floating-shoe::after {
            content: '';
            position: absolute;
            bottom: -20px;
            left: 50%;
            transform: translateX(-50%);
            width: 100px;
            height: 20px;
            background: radial-gradient(ellipse, rgba(0,212,255,0.3) 0%, transparent 70%);
            border-radius: 50%;
            animation: glow 2s ease-in-out infinite alternate;
        }

        @keyframes float {
            0%, 100% { transform: translateY(0px) rotate(0deg); }
            50% { transform: translateY(-20px) rotate(5deg); }
        }

        @keyframes glow {
            0% { opacity: 0.5; transform: translateX(-50%) scale(1); }
            100% { opacity: 1; transform: translateX(-50%) scale(1.1); }
        }

        .hero h1 {
            font-size: clamp(2.5rem, 5vw, 4rem);
            margin-bottom: 1rem;
            background: linear-gradient(45deg, var(--primary-neon), var(--secondary-neon));
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            animation: slideIn 1s ease-out;
        }

        .hero p {
            font-size: 1.3rem;
            margin-bottom: 2rem;
            opacity: 0.9;
            animation: slideIn 1s ease-out 0.2s both;
        }

        .cta-button {
            padding: 1rem 2.5rem;
            font-size: 1.2rem;
            background: linear-gradient(45deg, var(--primary-neon), var(--secondary-neon));
            border: none;
            border-radius: 50px;
            color: black;
            font-weight: bold;
            cursor: pointer;
            transition: all 0.3s ease;
            box-shadow: var(--shadow-neon);
            animation: slideIn 1s ease-out 0.4s both;
        }

        .cta-button:hover {
            transform: translateY(-5px) scale(1.05);
            box-shadow: 0 10px 30px rgba(0,212,255,0.5);
        }

        @keyframes slideIn {
            from {
                opacity: 0;
                transform: translateY(30px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }

        /* Featured Shoes */
        .featured {
            padding: 5rem 5%;
            max-width: 1400px;
            margin: 0 auto;
        }

        .section-title {
            text-align: center;
            font-size: 3rem;
            margin-bottom: 4rem;
            background: linear-gradient(45deg, var(--primary-neon), var(--secondary-neon));
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
        }

        .shoes-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
            gap: 2rem;
        }

        .shoe-card {
            background: var(--glass-bg);
            backdrop-filter: blur(10px);
            border-radius: 20px;
            padding: 2rem;
            text-align: center;
            transition: all 0.4s ease;
            border: 1px solid rgba(255,255,255,0.1);
            position: relative;
            overflow: hidden;
        }

        .shoe-card::before {
            content: '';
            position: absolute;
            top: 0;
            left: -100%;
            width: 100%;
            height: 100%;
            background: linear-gradient(90deg, transparent, rgba(255,255,255,0.2), transparent);
            transition: left 0.5s;
        }

        .shoe-card:hover::before {
            left: 100%;
        }

        .shoe-card:hover {
            transform: translateY(-15px) rotateX(5deg) rotateY(5deg);
            box-shadow: var(--shadow-neon), 0 30px 60px rgba(0,0,0,0.4);
        }

        .shoe-emoji {
            font-size: 5rem;
            margin-bottom: 1rem;
            display: block;
        }

        .shoe-name {
            font-size: 1.5rem;
            margin-bottom: 0.5rem;
        }

        .shoe-price {
            font-size: 2rem;
            font-weight: bold;
            background: linear-gradient(45deg, var(--primary-neon), var(--secondary-neon));
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            margin-bottom: 1.5rem;
        }

        .buy-btn {
            padding: 0.8rem 2rem;
            background: linear-gradient(45deg, var(--primary-neon), var(--secondary-neon));
            border: none;
            border-radius: 30px;
            color: black;
            font-weight: bold;
            cursor: pointer;
            transition: all 0.3s ease;
            width: 100%;
        }

        .buy-btn:hover {
            transform: scale(1.05);
            box-shadow: 0 5px 20px rgba(0,212,255,0.4);
        }

        /* Why Choose Us */
        .why-choose {
            padding: 5rem 5%;
            background: rgba(255,255,255,0.02);
        }

        .features-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
            gap: 2rem;
            max-width: 1200px;
            margin: 4rem auto 0;
        }

        .feature {
            text-align: center;
            padding: 2rem;
        }

        .feature-icon {
            font-size: 4rem;
            margin-bottom: 1rem;
            background: linear-gradient(45deg, var(--primary-neon), var(--secondary-neon));
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
        }

        /* Reviews */
        .reviews {
            padding: 5rem 5%;
            max-width: 1200px;
            margin: 0 auto;
        }

        .reviews-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
            gap: 2rem;
            margin-top: 3rem;
        }

        .review-card {
            background: var(--glass-bg);
            backdrop-filter: blur(10px);
            padding: 2rem;
            border-radius: 15px;
            border: 1px solid rgba(255,255,255,0.1);
        }

        .stars {
            color: #ffd700;
            margin-bottom: 1rem;
        }

        /* Footer */
        .footer {
            background: rgba(0,0,0,0.8);
            padding: 3rem 5% 1rem;
            text-align: center;
        }

        .social-links {
            display: flex;
            justify-content: center;
            gap: 2rem;
            margin: 2rem 0;
        }

        .social-links a {
            font-size: 2rem;
            color: white;
            transition: all 0.3s ease;
        }

        .social-links a:hover {
            color: var(--primary-neon);
            transform: translateY(-5px);
        }

        /* Mobile Responsive */
        @media (max-width: 768px) {
            .navbar {
                padding: 1rem 3%;
                flex-direction: column;
                gap: 1rem;
            }

            .nav-links {
                gap: 1rem;
            }

            .floating-shoe {
                width: 250px;
                height: 250px;
            }

            .floating-shoe::before {
                font-size: 6rem;
            }

            .shoes-grid,
            .features-grid,
            .reviews-grid {
                grid-template-columns: 1fr;
            }

            .section-title {
                font-size: 2rem;
            }
        }

        /* Scroll to top */
        .scroll-top {
            position: fixed;
            bottom: 30px;
            right: 30px;
            background: var(--primary-neon);
            color: black;
            border: none;
            border-radius: 50%;
            width: 50px;
            height: 50px;
            font-size: 1.2rem;
            cursor: pointer;
            opacity: 0;
            visibility: hidden;
            transition: all 0.3s ease;
            z-index: 1000;
        }

        .scroll-top.show {
            opacity: 1;
            visibility: visible;
        }
    </style>
</head>
<body>
    <!-- Navbar -->
    <nav class="navbar">
        <div class="logo">SneakerVerse</div>
        <ul class="nav-links">
            <li><a href="#home">Home</a></li>
            <li><a href="#shop">Shop</a></li>
            <li><a href="#about">About</a></li>
        </ul>
        <div class="cart-icon">
            <i class="fas fa-shopping-cart"></i>
            <span class="cart-count">0</span>
        </div>
    </nav>

    <!-- Hero Section -->
    <section id="home" class="hero">
        <div class="floating-shoe"></div>
        <h1>Step Into the Future</h1>
        <p>Premium sneakers with anti-gravity style. Experience the next level of comfort & design.</p>
        <button class="cta-button" onclick="scrollToShop()">Shop Now</button>
    </section>

    <!-- Featured Shoes -->
    <section id="shop" class="featured">
        <h2 class="section-title">Featured Collection</h2>
        <div class="shoes-grid">
            <div class="shoe-card">
                <span class="shoe-emoji">🔥</span>
                <h3 class="shoe-name">FireStorm Pro</h3>
                <div class="shoe-price">₹8,999</div>
                <button class="buy-btn" onclick="addToCart('FireStorm Pro', 8999)">Add to Cart</button>
            </div>
            <div class="shoe-card">
                <span class="shoe-emoji">⚡</span>
                <h3 class="shoe-name">Lightning Bolt</h3>
                <div class="shoe-price">₹7,499</div>
                <button class="buy-btn" onclick="addToCart('Lightning Bolt', 7499)">Add to Cart</button>
            </div>
            <div class="shoe-card">
                <span class="shoe-emoji">🌟</span>
                <h3 class="shoe-name">Nova Glow</h3>
                <div class="shoe-price">₹9,999</div>
                <button class="buy-btn" onclick="addToCart('Nova Glow', 9999)">Add to Cart</button>
            </div>
            <div class="shoe-card">
                <span class="shoe-emoji">💎</span>
                <h3 class="shoe-name">Diamond Edge</h3>
                <div class="shoe-price">₹12,999</div>
                <button class="buy-btn" onclick="addToCart('Diamond Edge', 12999)">Add to Cart</button>
            </div>
        </div>
    </section>

    <!-- Why Choose Us -->
    <section class="why-choose">
        <h2 class="section-title">Why Choose SneakerVerse?</h2>
        <div class="features-grid">
            <div class="feature">
                <div class="feature-icon">⚡</div>
                <h3>Lightning Fast</h3>
                <p>Free shipping on orders above ₹2000</p>
            </div>
            <div class="feature">
                <div class="feature-icon">👑</div>
                <h3>Premium Quality</h3>
                <p>Handcrafted with premium materials</p>
            </div>
            <div class="feature">
                <div class="feature-icon">😌</div>
                <h3>Ultimate Comfort</h3>
                <p>24/7 comfort guaranteed</p>
            </div>
            <div class="feature">
                <div class="feature-icon">🔒</div>
                <h3>Secure Checkout</h3>
                <p>Razorpay secure payments</p>
            </div>
        </div>
    </section>

    <!-- Reviews -->
    <section class="reviews">
        <h2 class="section-title">What Our Customers Say</h2>
        <div class="reviews-grid">
            <div class="review-card">
                <div class="stars">★★★★★</div>
                <p>"Best sneakers I've ever owned! The floating effect is just 🔥"</p>
                <strong>- Rohan S.</strong>
            </div>
            <div class="review-card">
                <div class="stars">★★★★★</div>
                <p>"Super comfortable and stylish. Delivery was lightning fast!"</p>
                <strong>- Priya K.</strong>
            </div>
            <div class="review-card">
                <div class="stars">★★★★★</div>
                <p>"Premium quality at great price. Highly recommended!"</p>
                <strong>- Arjun M.</strong>
            </div>
        </div>
    </section>

    <!-- Footer -->
    <footer class="footer">
        <h3>SneakerVerse</h3>
        <div class="social-links">
            <a href="#"><i class="fab fa-instagram"></i></a>
            <a href="#"><i class="fab fa-twitter"></i></a>
            <a href="#"><i class="fab fa-facebook"></i></a>
            <a href="#"><i class="fab fa-whatsapp"></i></a>
        </div>
        <p>&copy; 2024 SneakerVerse. All rights reserved.</p>
    </footer>

    <!-- Scroll to Top Button -->
    <button class="scroll-top" onclick="scrollToTop()">
        <i class="fas fa-arrow-up"></i>
    </button>

    <script>
        // Cart functionality
        let cartCount = 0;
        let cartItems = [];

        function addToCart(name, price) {
            cartCount++;
            cartItems.push({name, price});
            document.querySelector('.cart-count').textContent = cartCount;
            
            // Visual feedback
            const btn = event.target;
            btn.textContent = 'Added! 🎉';
            btn.style.background = '#ffd700';
            setTimeout(() => {
                btn.textContent = 'Add to Cart';
                btn.style.background = '';
            }, 1500);
        }

        // Smooth scroll functions
        function scrollToShop() {
            document.getElementById('shop').scrollIntoView({ behavior: 'smooth' });
        }

        function scrollToTop() {
            window.scrollTo({ top: 0, behavior: 'smooth' });
        }

        // Navbar scroll effect
        window.addEventListener('scroll', () => {
            const scrollTopBtn = document.querySelector('.scroll-top');
            if (window.scrollY > 300) {
                scrollTopBtn.classList.add('show');
            } else {
                scrollTopBtn.classList.remove('show');
            }

            // Navbar background on scroll
            const navbar = document.querySelector('.navbar');
            if (window.scrollY > 100) {
                navbar.style.background = 'rgba(10, 10, 10, 0.95)';
            } else {
                navbar.style.background = 'rgba(10, 10, 10, 0.9)';
            }
        });

        // Intersection Observer for animations
        const observerOptions = {
            threshold: 0.1,
            rootMargin: '0px 0px -50px 0px'
        };

        const observer = new IntersectionObserver((entries) => {
            entries.forEach(entry => {
                if (entry.isIntersecting) {
                    entry.target.style.opacity = '1';
                    entry.target.style.transform = 'translateY(0)';
                }
            });
        }, observerOptions);

        // Observe all cards
        document.querySelectorAll('.shoe-card, .feature, .review-card').forEach(el => {
            el.style.opacity = '0';
            el.style.transform = 'translateY(30px)';
            el.style.transition = 'all 0.6s ease';
            observer.observe(el);
        });

        // Mobile menu toggle (for future enhancement)
        function toggleMobileMenu() {
            const navLinks = document.querySelector('.nav-links');
            navLinks.classList.toggle('active');
        }
    </script>
</body>
</html>
