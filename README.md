# Hospital_system_db

## Jadval tavsifi

**1. Bo‘limlar (bolimlar)**  
Shifoxonadagi har bir bo‘limning nomi, xona raqami va telefon raqami saqlanadi. Har bir bo‘limga avtomatik tarzda yagona ID biriktiriladi.

**2. Shifokorlar (shifokorlar)**  
Shifokorlarning ismi, familiyasi va qaysi bo‘limga tegishli ekani ko‘rsatiladi. Har bir shifokor ma'lum bir bo‘limga biriktirilgan. Agar bo‘lim o‘chirilsa, unga tegishli shifokorlar ham avtomatik o‘chiriladi (`ON DELETE CASCADE`).

**3. Bemorlar (bemorlar)**  
Bemorlarning ismi, familiyasi, kasalligi va qabul qilgan shifokori ko‘rsatiladi. Har bir bemor faqat bitta shifokorga biriktiriladi. Shifokor o‘chirilganda unga tegishli bemorlar ham o‘chiriladi.

## Asosiy imkoniyatlar

- Har bir jadvalda avtomatik `id` maydoni mavjud.
- Bo‘lim va shifokorlar o‘rtasida bog‘lanish mavjud.
- Shifokorlar va bemorlar o‘rtasida ham bog‘lanish mavjud.
- `ON DELETE CASCADE` orqali bog‘langan ma'lumotlar tozaligi ta'minlanadi.
- Dastlabki test ma’lumotlari kiritilgan (bo‘limlar, shifokorlar, bemorlar).
