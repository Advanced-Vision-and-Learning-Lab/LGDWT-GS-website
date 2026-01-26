// Drag-to-reveal slider functionality
document.addEventListener('DOMContentLoaded', function() {
    const sliders = document.querySelectorAll('.comparison-slider');
    
    sliders.forEach(slider => {
        const before = slider.querySelector('.slider-before');
        const after = slider.querySelector('.slider-after');
        const handle = slider.querySelector('.slider-handle');
        let isDragging = false;
        let startX = 0;
        let currentX = 0;
        let sliderWidth = 0;
        let hasMoved = false;
        
        function updateSlider(x) {
            const rect = slider.getBoundingClientRect();
            const percentage = Math.max(0, Math.min(100, ((x - rect.left) / rect.width) * 100));
            
            after.style.clipPath = `inset(0 ${100 - percentage}% 0 0)`;
            handle.style.left = `${percentage}%`;
        }
        
        function handleStart(e) {
            isDragging = true;
            hasMoved = false;
            const rect = slider.getBoundingClientRect();
            startX = e.clientX || e.touches[0].clientX;
            sliderWidth = rect.width;
            slider.style.cursor = 'ew-resize';
            e.preventDefault();
        }
        
        function handleMove(e) {
            if (!isDragging) return;
            hasMoved = true;
            const rect = slider.getBoundingClientRect();
            currentX = e.clientX || e.touches[0].clientX;
            updateSlider(currentX);
            e.preventDefault();
        }
        
        function handleEnd(e) {
            if (!isDragging) return;
            isDragging = false;
            slider.style.cursor = 'ew-resize';
            
            // If it was just a click (not a drag), move to click position
            if (!hasMoved) {
                const rect = slider.getBoundingClientRect();
                const clickX = e.clientX || (e.changedTouches && e.changedTouches[0].clientX);
                if (clickX) {
                    updateSlider(clickX);
                }
            }
            hasMoved = false;
            e.preventDefault();
        }
        
        // Mouse events
        slider.addEventListener('mousedown', handleStart);
        document.addEventListener('mousemove', handleMove);
        document.addEventListener('mouseup', handleEnd);
        
        // Touch events for mobile
        slider.addEventListener('touchstart', handleStart, { passive: false });
        document.addEventListener('touchmove', handleMove, { passive: false });
        document.addEventListener('touchend', handleEnd);
        
        // Initialize at 50% after images load
        const beforeImg = before.querySelector('img');
        const afterImg = after.querySelector('img');
        
        function initializeSlider() {
            // Wait for images to load and set proper height
            if (beforeImg.complete && afterImg.complete) {
                after.style.height = before.offsetHeight + 'px';
                updateSlider(slider.getBoundingClientRect().left + slider.getBoundingClientRect().width / 2);
            } else {
                beforeImg.addEventListener('load', function() {
                    after.style.height = before.offsetHeight + 'px';
                    updateSlider(slider.getBoundingClientRect().left + slider.getBoundingClientRect().width / 2);
                });
                afterImg.addEventListener('load', function() {
                    after.style.height = before.offsetHeight + 'px';
                    updateSlider(slider.getBoundingClientRect().left + slider.getBoundingClientRect().width / 2);
                });
            }
        }
        
        // Initialize immediately if images are already loaded
        if (beforeImg.complete && afterImg.complete) {
            setTimeout(() => {
                after.style.height = before.offsetHeight + 'px';
                updateSlider(slider.getBoundingClientRect().left + slider.getBoundingClientRect().width / 2);
            }, 100);
        } else {
            initializeSlider();
        }
        
        // Handle window resize
        window.addEventListener('resize', () => {
            const rect = slider.getBoundingClientRect();
            const percentage = parseFloat(handle.style.left) || 50;
            updateSlider(rect.left + (rect.width * percentage / 100));
        });
    });
});
