.class public Lmiuix/graphics/BitmapFactory;
.super Landroid/graphics/BitmapFactory;
.source "BitmapFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/graphics/BitmapFactory$CropOption;
    }
.end annotation


# static fields
.field public static final APPELLATION_SUFFIX:[Ljava/lang/String;

.field public static final ASIALANGPATTERN:Ljava/util/regex/Pattern;

.field public static final BITMAP_COLOR_MODE_DARK:I = 0x0

.field public static final BITMAP_COLOR_MODE_LIGHT:I = 0x2

.field public static final BITMAP_COLOR_MODE_MEDIUM:I = 0x1

.field public static final MODE_DARK:I = 0x1

.field public static final MODE_DAYNIGHT:I = 0x2

.field public static final MODE_LIGHT:I

.field public static PNG_HEAD_FORMAT:[B

.field public static final sCanvasCache:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroid/graphics/Canvas;",
            ">;"
        }
    .end annotation
.end field

.field public static sLockForRsContext:Ljava/lang/Object;

.field public static sRsContext:Landroid/renderscript/RenderScript;

.field public static final sSrcInPaint:Landroid/graphics/Paint;


# direct methods
.method public static constructor <clinit>()V
    .locals 41

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lmiuix/graphics/BitmapFactory;->sLockForRsContext:Ljava/lang/Object;

    const/16 v0, 0x8

    new-array v0, v0, [B

    .line 2
    fill-array-data v0, :array_0

    sput-object v0, Lmiuix/graphics/BitmapFactory;->PNG_HEAD_FORMAT:[B

    .line 3
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lmiuix/graphics/BitmapFactory;->sCanvasCache:Ljava/lang/ThreadLocal;

    .line 4
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lmiuix/graphics/BitmapFactory;->sSrcInPaint:Landroid/graphics/Paint;

    .line 5
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 6
    sget-object v0, Lmiuix/graphics/BitmapFactory;->sSrcInPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    const-string v0, "[\u3100-\u312d\u31a0-\u31ba\u4e00-\u9fcc\u3400-\u4db5\uf900-\ufad9\u2f00-\u2fd5\u2e80-\u2ef3\u31c0-\u31e3\u1100-\u11ff\ua960-\ua97c\ud7b0-\ud7fb\u3131-\u318e\uac00-\ud7a3\u3040-\u309f\u30a0-\u30ff\u31f0-\u31ff\u3190-\u319f\ua000-\ua48c\ua490-\ua4c6]"

    .line 7
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lmiuix/graphics/BitmapFactory;->ASIALANGPATTERN:Ljava/util/regex/Pattern;

    const-string v1, "\u8001\u5e08"

    const-string v2, "\u5148\u751f"

    const-string v3, "\u8001\u677f"

    const-string v4, "\u4ed4"

    const-string v5, "\u624b\u673a"

    const-string v6, "\u53d4"

    const-string v7, "\u963f\u59e8"

    const-string v8, "\u5b85"

    const-string v9, "\u4f2f"

    const-string v10, "\u4f2f\u6bcd"

    const-string v11, "\u4f2f\u7236"

    const-string v12, "\u54e5"

    const-string v13, "\u59d0"

    const-string v14, "\u5f1f"

    const-string v15, "\u59b9"

    const-string v16, "\u8205"

    const-string v17, "\u59d1"

    const-string v18, "\u7236"

    const-string v19, "\u4e3b\u4efb"

    const-string v20, "\u7ecf\u7406"

    const-string v21, "\u5de5\u4f5c"

    const-string v22, "\u540c\u4e8b"

    const-string v23, "\u5f8b\u5e08"

    const-string v24, "\u53f8\u673a"

    const-string v25, "\u5e08\u5085"

    const-string v26, "\u5e08\u7236"

    const-string v27, "\u7237"

    const-string v28, "\u5976"

    const-string v29, "\u4e2d\u4ecb"

    const-string v30, "\u8463"

    const-string v31, "\u603b"

    const-string v32, "\u592a\u592a"

    const-string v33, "\u4fdd\u59c6"

    const-string v34, "\u67d0"

    const-string v35, "\u79d8\u4e66"

    const-string v36, "\u5904\u957f"

    const-string v37, "\u5c40\u957f"

    const-string v38, "\u73ed\u957f"

    const-string v39, "\u5144"

    const-string v40, "\u52a9\u7406"

    .line 8
    filled-new-array/range {v1 .. v40}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiuix/graphics/BitmapFactory;->APPELLATION_SUFFIX:[Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 1
        -0x77t
        0x50t
        0x4et
        0x47t
        0xdt
        0xat
        0x1at
        0xat
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/graphics/BitmapFactory;-><init>()V

    .line 2
    new-instance p0, Ljava/lang/InstantiationException;

    const-string v0, "Cannot instantiate utility class"

    invoke-direct {p0, v0}, Ljava/lang/InstantiationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static between(III)I
    .locals 0

    .line 1
    invoke-static {p0, p2}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-static {p1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method public static composeBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 7

    .line 1
    new-instance v5, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {v5, v2, v2, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    if-eqz p1, :cond_0

    .line 2
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-direct {v0, v2, v2, v1, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-direct {v0, v2, v2, v1, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    :goto_0
    move-object v6, v0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 4
    invoke-static/range {v0 .. v6}, Lmiuix/graphics/BitmapFactory;->composeBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static composeBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/Bitmap;
    .locals 7

    .line 5
    new-instance v6, Landroid/graphics/Rect;

    const/4 v0, 0x0

    invoke-direct {v6, v0, v0, p5, p5}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v6}, Lmiuix/graphics/BitmapFactory;->composeBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static composeBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    if-nez p6, :cond_0

    return-object v0

    :cond_0
    if-nez p1, :cond_3

    .line 6
    invoke-virtual {p6}, Landroid/graphics/Rect;->height()I

    move-result p1

    if-lez p1, :cond_2

    invoke-virtual {p6}, Landroid/graphics/Rect;->width()I

    move-result p1

    if-gtz p1, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {p6}, Landroid/graphics/Rect;->width()I

    move-result p1

    invoke-virtual {p6}, Landroid/graphics/Rect;->height()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_1

    :cond_2
    :goto_0
    return-object v0

    :cond_3
    if-nez p6, :cond_4

    .line 8
    new-instance p6, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {p6, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 9
    :cond_4
    :goto_1
    invoke-static {p0, p2, v0, p5, p6}, Lmiuix/graphics/BitmapFactory;->maskOutBitmap(Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 10
    invoke-static {}, Lmiuix/graphics/BitmapFactory;->getCachedCanvas()Landroid/graphics/Canvas;

    move-result-object p2

    .line 11
    invoke-virtual {p2, p1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    if-eqz p4, :cond_5

    .line 12
    invoke-virtual {p4, p6}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 13
    invoke-virtual {p4, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 14
    :cond_5
    invoke-virtual {p2, p0, p6, p6, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 15
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    if-eqz p3, :cond_6

    .line 16
    invoke-virtual {p3, p6}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 17
    invoke-virtual {p3, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_6
    return-object p1
.end method

.method public static computeSampleSize(Lmiuix/io/ResettableInputStream;I)I
    .locals 4

    if-lez p1, :cond_0

    .line 1
    invoke-static {p0}, Lmiuix/graphics/BitmapFactory;->getBitmapSize(Lmiuix/io/ResettableInputStream;)Landroid/graphics/BitmapFactory$Options;

    move-result-object p0

    .line 2
    iget v0, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-double v0, v0

    iget p0, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-double v2, p0

    mul-double/2addr v0, v2

    int-to-double p0, p1

    div-double/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    double-to-int p0, p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method public static containsEastAsianCharacter(Ljava/lang/String;)Z
    .locals 1

    .line 1
    sget-object v0, Lmiuix/graphics/BitmapFactory;->ASIALANGPATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p0

    return p0
.end method

.method public static copyToEmpty(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 2

    .line 1
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 2
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p0

    invoke-static {v1, p0, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static createNameBitmap(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, p2, v0, v0}, Lmiuix/graphics/BitmapFactory;->createNameBitmap(Landroid/content/Context;Ljava/lang/String;III)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static createNameBitmap(Landroid/content/Context;Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v5, p3

    .line 3
    invoke-static/range {v0 .. v5}, Lmiuix/graphics/BitmapFactory;->createNameBitmap(Landroid/content/Context;Ljava/lang/String;IIII)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static createNameBitmap(Landroid/content/Context;Ljava/lang/String;III)Landroid/graphics/Bitmap;
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 2
    invoke-static/range {v0 .. v5}, Lmiuix/graphics/BitmapFactory;->createNameBitmap(Landroid/content/Context;Ljava/lang/String;IIII)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static createNameBitmap(Landroid/content/Context;Ljava/lang/String;IIII)Landroid/graphics/Bitmap;
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 4
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lmiuix/graphics/BitmapFactory;->getWordFromName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    :cond_1
    const/4 v0, 0x2

    const/4 v1, 0x1

    if-nez p3, :cond_6

    if-nez p5, :cond_2

    .line 6
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v2, Lmiuix/graphics/R$drawable;->word_photo_bg_light:I

    invoke-virtual {p3, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    goto :goto_0

    :cond_2
    if-ne v1, p5, :cond_3

    .line 7
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v2, Lmiuix/graphics/R$drawable;->word_photo_bg_dark:I

    invoke-virtual {p3, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    goto :goto_0

    :cond_3
    if-ne v0, p5, :cond_5

    .line 8
    sget p3, Lmiuix/graphics/R$attr;->wordPhotoBackground:I

    invoke-static {p0, p3}, Lmiuix/internal/util/AttributeResolver;->resolveDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    if-nez p3, :cond_7

    .line 9
    invoke-static {p0}, Lmiuix/internal/util/ViewUtils;->isNightMode(Landroid/content/Context;)Z

    move-result p3

    if-eqz p3, :cond_4

    .line 10
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v2, Lmiuix/graphics/R$drawable;->word_photo_bg_dark:I

    invoke-virtual {p3, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    goto :goto_0

    .line 11
    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v2, Lmiuix/graphics/R$drawable;->word_photo_bg_light:I

    invoke-virtual {p3, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    goto :goto_0

    .line 12
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "unknown mode when get drawable: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 13
    :cond_6
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    .line 14
    :cond_7
    :goto_0
    new-instance v2, Landroid/graphics/Rect;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v3, p2, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p3, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    if-nez p4, :cond_d

    if-nez p5, :cond_8

    .line 15
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p4, Lmiuix/graphics/R$color;->word_photo_color:I

    invoke-virtual {p0, p4}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    goto :goto_2

    :cond_8
    if-ne v1, p5, :cond_9

    .line 16
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p4, Lmiuix/graphics/R$color;->word_photo_color_dark:I

    invoke-virtual {p0, p4}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    goto :goto_2

    :cond_9
    if-ne v0, p5, :cond_c

    const/4 p4, -0x1

    .line 17
    :try_start_0
    sget p5, Lmiuix/graphics/R$attr;->wordPhotoTextColor:I

    invoke-static {p0, p5}, Lmiuix/internal/util/AttributeResolver;->resolveColor(Landroid/content/Context;I)I

    move-result p5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move p5, p4

    :goto_1
    if-ne p5, p4, :cond_b

    .line 18
    invoke-static {p0}, Lmiuix/internal/util/ViewUtils;->isNightMode(Landroid/content/Context;)Z

    move-result p4

    if-eqz p4, :cond_a

    .line 19
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p4, Lmiuix/graphics/R$color;->word_photo_color_dark:I

    invoke-virtual {p0, p4}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    goto :goto_2

    .line 20
    :cond_a
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p4, Lmiuix/graphics/R$color;->word_photo_color:I

    invoke-virtual {p0, p4}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    goto :goto_2

    :cond_b
    move p0, p5

    goto :goto_2

    .line 21
    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "unknown mode when get photo color: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 22
    :cond_d
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p4}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    .line 23
    :goto_2
    sget-object p4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p2, p4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p4

    .line 24
    new-instance p5, Landroid/graphics/Canvas;

    invoke-direct {p5, p4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 25
    invoke-virtual {p3, p5}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 26
    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 27
    invoke-virtual {p3, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 28
    invoke-virtual {p3, p0}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float p0, p2

    const v0, 0x3f19999a    # 0.6f

    mul-float/2addr p0, v0

    .line 29
    invoke-virtual {p3, p0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 30
    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/graphics/Rect;-><init>()V

    .line 31
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p3, p1, v3, v0, p0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 32
    iget v0, p0, Landroid/graphics/Rect;->right:I

    iget v1, p0, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v1

    sub-int v0, p2, v0

    int-to-double v0, v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v0, v2

    double-to-int v0, v0

    .line 33
    iget v1, p0, Landroid/graphics/Rect;->top:I

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, p0

    sub-int/2addr p2, v1

    int-to-double v4, p2

    mul-double/2addr v4, v2

    double-to-int p0, v4

    int-to-float p2, v0

    int-to-float p0, p0

    .line 34
    invoke-virtual {p5, p1, p2, p0, p3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-object p4
.end method

.method public static createPhoto(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lmiuix/graphics/R$dimen;->contact_photo_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 2
    invoke-static {p0, p1, v0}, Lmiuix/graphics/BitmapFactory;->createPhoto(Landroid/content/Context;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static createPhoto(Landroid/content/Context;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 7

    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 4
    sget v0, Lmiuix/graphics/R$drawable;->ic_contact_photo_fg:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 5
    sget v0, Lmiuix/graphics/R$drawable;->ic_contact_photo_bg:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 6
    sget v0, Lmiuix/graphics/R$drawable;->ic_contact_photo_mask:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v2, 0x0

    move-object v1, p1

    move v6, p2

    .line 7
    invoke-static/range {v1 .. v6}, Lmiuix/graphics/BitmapFactory;->composeBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static cropBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Lmiuix/graphics/BitmapFactory$CropOption;)Landroid/graphics/Bitmap;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-eqz v0, :cond_5

    if-nez v1, :cond_0

    goto/16 :goto_1

    :cond_0
    if-nez p2, :cond_1

    .line 3
    new-instance v2, Lmiuix/graphics/BitmapFactory$CropOption;

    invoke-direct {v2}, Lmiuix/graphics/BitmapFactory$CropOption;-><init>()V

    goto :goto_0

    :cond_1
    move-object/from16 v2, p2

    .line 4
    :goto_0
    iget-object v3, v2, Lmiuix/graphics/BitmapFactory$CropOption;->srcBmpDrawingArea:Landroid/graphics/Rect;

    const/4 v4, 0x0

    if-nez v3, :cond_2

    .line 5
    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-direct {v3, v4, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 6
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    iget v7, v3, Landroid/graphics/Rect;->left:I

    invoke-static {v4, v5, v7}, Lmiuix/graphics/BitmapFactory;->between(III)I

    move-result v5

    .line 7
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    iget v8, v3, Landroid/graphics/Rect;->right:I

    invoke-static {v5, v7, v8}, Lmiuix/graphics/BitmapFactory;->between(III)I

    move-result v7

    .line 8
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    sub-int/2addr v8, v6

    iget v9, v3, Landroid/graphics/Rect;->top:I

    invoke-static {v4, v8, v9}, Lmiuix/graphics/BitmapFactory;->between(III)I

    move-result v8

    .line 9
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    invoke-static {v8, v9, v3}, Lmiuix/graphics/BitmapFactory;->between(III)I

    move-result v3

    sub-int v9, v7, v5

    sub-int v10, v3, v8

    .line 10
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    .line 11
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    .line 12
    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v13

    div-int/lit8 v13, v13, 0x2

    iget v14, v2, Lmiuix/graphics/BitmapFactory$CropOption;->borderWidth:I

    invoke-static {v4, v13, v14}, Lmiuix/graphics/BitmapFactory;->between(III)I

    move-result v13

    iput v13, v2, Lmiuix/graphics/BitmapFactory$CropOption;->borderWidth:I

    .line 13
    div-int/lit8 v13, v11, 0x2

    iget v14, v2, Lmiuix/graphics/BitmapFactory$CropOption;->rx:I

    invoke-static {v4, v13, v14}, Lmiuix/graphics/BitmapFactory;->between(III)I

    move-result v13

    iput v13, v2, Lmiuix/graphics/BitmapFactory$CropOption;->rx:I

    .line 14
    div-int/lit8 v13, v12, 0x2

    iget v14, v2, Lmiuix/graphics/BitmapFactory$CropOption;->ry:I

    invoke-static {v4, v13, v14}, Lmiuix/graphics/BitmapFactory;->between(III)I

    move-result v13

    iput v13, v2, Lmiuix/graphics/BitmapFactory$CropOption;->ry:I

    .line 15
    new-instance v13, Landroid/graphics/Paint;

    invoke-direct {v13}, Landroid/graphics/Paint;-><init>()V

    .line 16
    invoke-virtual {v13, v6}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 17
    invoke-virtual {v13, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 18
    invoke-virtual {v13, v6}, Landroid/graphics/Paint;->setDither(Z)V

    .line 19
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 20
    invoke-virtual {v6, v4, v4, v4, v4}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 21
    iget v4, v2, Lmiuix/graphics/BitmapFactory$CropOption;->rx:I

    iget v14, v2, Lmiuix/graphics/BitmapFactory$CropOption;->borderWidth:I

    sub-int/2addr v4, v14

    if-lez v4, :cond_3

    iget v4, v2, Lmiuix/graphics/BitmapFactory$CropOption;->ry:I

    sub-int/2addr v4, v14

    if-lez v4, :cond_3

    .line 22
    new-instance v4, Landroid/graphics/RectF;

    iget v14, v2, Lmiuix/graphics/BitmapFactory$CropOption;->borderWidth:I

    int-to-float v15, v14

    int-to-float v1, v14

    sub-int v0, v11, v14

    int-to-float v0, v0

    sub-int v14, v12, v14

    int-to-float v14, v14

    invoke-direct {v4, v15, v1, v0, v14}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v0, v2, Lmiuix/graphics/BitmapFactory$CropOption;->rx:I

    iget v1, v2, Lmiuix/graphics/BitmapFactory$CropOption;->borderWidth:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v14, v2, Lmiuix/graphics/BitmapFactory$CropOption;->ry:I

    sub-int/2addr v14, v1

    int-to-float v1, v14

    invoke-virtual {v6, v4, v0, v1, v13}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 23
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v13, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 24
    :cond_3
    iget v0, v2, Lmiuix/graphics/BitmapFactory$CropOption;->borderWidth:I

    mul-int/lit8 v1, v0, 0x2

    sub-int v1, v11, v1

    mul-int/lit8 v0, v0, 0x2

    sub-int v0, v12, v0

    int-to-float v4, v9

    const/high16 v9, 0x3f800000    # 1.0f

    mul-float v14, v4, v9

    int-to-float v1, v1

    div-float/2addr v14, v1

    int-to-float v10, v10

    mul-float/2addr v9, v10

    int-to-float v0, v0

    div-float/2addr v9, v0

    .line 25
    invoke-static {v14, v9}, Ljava/lang/Math;->min(FF)F

    move-result v9

    mul-float/2addr v1, v9

    sub-float/2addr v4, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v4, v1

    float-to-int v4, v4

    mul-float/2addr v0, v9

    sub-float/2addr v10, v0

    div-float/2addr v10, v1

    float-to-int v0, v10

    .line 26
    new-instance v1, Landroid/graphics/Rect;

    add-int/2addr v5, v4

    add-int/2addr v8, v0

    sub-int/2addr v7, v4

    sub-int/2addr v3, v0

    invoke-direct {v1, v5, v8, v7, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 27
    new-instance v0, Landroid/graphics/Rect;

    iget v3, v2, Lmiuix/graphics/BitmapFactory$CropOption;->borderWidth:I

    sub-int v4, v11, v3

    sub-int v5, v12, v3

    invoke-direct {v0, v3, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v3, p0

    .line 28
    invoke-virtual {v6, v3, v1, v0, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 29
    iget v0, v2, Lmiuix/graphics/BitmapFactory$CropOption;->borderWidth:I

    if-lez v0, :cond_4

    iget v0, v2, Lmiuix/graphics/BitmapFactory$CropOption;->borderColor:I

    ushr-int/lit8 v1, v0, 0x18

    if-eqz v1, :cond_4

    .line 30
    invoke-virtual {v13, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 31
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->DST_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v13, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 32
    new-instance v0, Landroid/graphics/RectF;

    int-to-float v1, v11

    int-to-float v3, v12

    const/4 v4, 0x0

    invoke-direct {v0, v4, v4, v1, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v1, v2, Lmiuix/graphics/BitmapFactory$CropOption;->rx:I

    int-to-float v1, v1

    iget v2, v2, Lmiuix/graphics/BitmapFactory$CropOption;->ry:I

    int-to-float v2, v2

    invoke-virtual {v6, v0, v1, v2, v13}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_4
    return-object p1

    :cond_5
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static cropBitmap(Landroid/graphics/Bitmap;Lmiuix/graphics/BitmapFactory$CropOption;)Landroid/graphics/Bitmap;
    .locals 1

    if-eqz p0, :cond_0

    .line 1
    invoke-static {p0}, Lmiuix/graphics/BitmapFactory;->copyToEmpty(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2
    invoke-static {p0, v0, p1}, Lmiuix/graphics/BitmapFactory;->cropBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Lmiuix/graphics/BitmapFactory$CropOption;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static decodeBitmap(Landroid/content/Context;Landroid/net/Uri;IIZ)Landroid/graphics/Bitmap;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 13
    :try_start_0
    new-instance v1, Lmiuix/io/ResettableInputStream;

    invoke-direct {v1, p0, p1}, Lmiuix/io/ResettableInputStream;-><init>(Landroid/content/Context;Landroid/net/Uri;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 14
    :try_start_1
    invoke-static {v1, p2, p3, p4}, Lmiuix/graphics/BitmapFactory;->decodeBitmap(Lmiuix/io/ResettableInputStream;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15
    invoke-virtual {v1}, Lmiuix/io/ResettableInputStream;->close()V

    return-object p0

    :catchall_0
    move-exception p0

    move-object v0, v1

    goto :goto_0

    :catchall_1
    move-exception p0

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lmiuix/io/ResettableInputStream;->close()V

    .line 16
    :cond_0
    throw p0
.end method

.method public static decodeBitmap(Landroid/content/Context;Landroid/net/Uri;IZ)Landroid/graphics/Bitmap;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 21
    :try_start_0
    new-instance v1, Lmiuix/io/ResettableInputStream;

    invoke-direct {v1, p0, p1}, Lmiuix/io/ResettableInputStream;-><init>(Landroid/content/Context;Landroid/net/Uri;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 22
    :try_start_1
    invoke-static {v1, p2, p3}, Lmiuix/graphics/BitmapFactory;->decodeBitmap(Lmiuix/io/ResettableInputStream;IZ)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 23
    invoke-virtual {v1}, Lmiuix/io/ResettableInputStream;->close()V

    return-object p0

    :catchall_0
    move-exception p0

    move-object v0, v1

    goto :goto_0

    :catchall_1
    move-exception p0

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lmiuix/io/ResettableInputStream;->close()V

    .line 24
    :cond_0
    throw p0
.end method

.method public static decodeBitmap(Landroid/content/Context;Landroid/net/Uri;Z)Landroid/graphics/Bitmap;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 9
    :try_start_0
    new-instance v1, Lmiuix/io/ResettableInputStream;

    invoke-direct {v1, p0, p1}, Lmiuix/io/ResettableInputStream;-><init>(Landroid/content/Context;Landroid/net/Uri;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 p0, -0x1

    .line 10
    :try_start_1
    invoke-static {v1, p0, p2}, Lmiuix/graphics/BitmapFactory;->decodeBitmap(Lmiuix/io/ResettableInputStream;IZ)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    invoke-virtual {v1}, Lmiuix/io/ResettableInputStream;->close()V

    return-object p0

    :catchall_0
    move-exception p0

    move-object v0, v1

    goto :goto_0

    :catchall_1
    move-exception p0

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lmiuix/io/ResettableInputStream;->close()V

    .line 12
    :cond_0
    throw p0
.end method

.method public static decodeBitmap(Ljava/lang/String;IIZ)Landroid/graphics/Bitmap;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 5
    :try_start_0
    new-instance v1, Lmiuix/io/ResettableInputStream;

    invoke-direct {v1, p0}, Lmiuix/io/ResettableInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 6
    :try_start_1
    invoke-static {v1, p1, p2, p3}, Lmiuix/graphics/BitmapFactory;->decodeBitmap(Lmiuix/io/ResettableInputStream;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    invoke-virtual {v1}, Lmiuix/io/ResettableInputStream;->close()V

    return-object p0

    :catchall_0
    move-exception p0

    move-object v0, v1

    goto :goto_0

    :catchall_1
    move-exception p0

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lmiuix/io/ResettableInputStream;->close()V

    .line 8
    :cond_0
    throw p0
.end method

.method public static decodeBitmap(Ljava/lang/String;IZ)Landroid/graphics/Bitmap;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 17
    :try_start_0
    new-instance v1, Lmiuix/io/ResettableInputStream;

    invoke-direct {v1, p0}, Lmiuix/io/ResettableInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 18
    :try_start_1
    invoke-static {v1, p1, p2}, Lmiuix/graphics/BitmapFactory;->decodeBitmap(Lmiuix/io/ResettableInputStream;IZ)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 19
    invoke-virtual {v1}, Lmiuix/io/ResettableInputStream;->close()V

    return-object p0

    :catchall_0
    move-exception p0

    move-object v0, v1

    goto :goto_0

    :catchall_1
    move-exception p0

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lmiuix/io/ResettableInputStream;->close()V

    .line 20
    :cond_0
    throw p0
.end method

.method public static decodeBitmap(Ljava/lang/String;Z)Landroid/graphics/Bitmap;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    new-instance v1, Lmiuix/io/ResettableInputStream;

    invoke-direct {v1, p0}, Lmiuix/io/ResettableInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 p0, -0x1

    .line 2
    :try_start_1
    invoke-static {v1, p0, p1}, Lmiuix/graphics/BitmapFactory;->decodeBitmap(Lmiuix/io/ResettableInputStream;IZ)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3
    invoke-virtual {v1}, Lmiuix/io/ResettableInputStream;->close()V

    return-object p0

    :catchall_0
    move-exception p0

    move-object v0, v1

    goto :goto_0

    :catchall_1
    move-exception p0

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lmiuix/io/ResettableInputStream;->close()V

    .line 4
    :cond_0
    throw p0
.end method

.method public static decodeBitmap(Lmiuix/io/ResettableInputStream;IIZ)Landroid/graphics/Bitmap;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    mul-int v0, p1, p2

    if-lez p1, :cond_0

    if-gtz p2, :cond_1

    :cond_0
    const/4 v0, -0x1

    .line 33
    :cond_1
    invoke-static {p0, v0, p3}, Lmiuix/graphics/BitmapFactory;->decodeBitmap(Lmiuix/io/ResettableInputStream;IZ)Landroid/graphics/Bitmap;

    move-result-object p0

    if-nez p0, :cond_2

    const/4 p0, 0x0

    return-object p0

    :cond_2
    if-lez v0, :cond_4

    .line 34
    invoke-static {p0, p1, p2}, Lmiuix/graphics/BitmapFactory;->scaleBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eq p0, p1, :cond_3

    .line 35
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_3
    move-object p0, p1

    :cond_4
    return-object p0
.end method

.method public static decodeBitmap(Lmiuix/io/ResettableInputStream;IZ)Landroid/graphics/Bitmap;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 25
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 26
    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v1, 0x0

    .line 27
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 28
    invoke-static {p0, p1}, Lmiuix/graphics/BitmapFactory;->computeSampleSize(Lmiuix/io/ResettableInputStream;I)I

    move-result p1

    iput p1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    :goto_0
    add-int/lit8 p1, v1, 0x1

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-ge v1, v2, :cond_1

    .line 29
    :try_start_0
    invoke-virtual {p0}, Lmiuix/io/ResettableInputStream;->reset()V

    .line 30
    invoke-static {p0, v3, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    if-eqz p2, :cond_0

    .line 31
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    mul-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    move v1, p1

    goto :goto_0

    .line 32
    :cond_0
    throw v1

    :cond_1
    :goto_1
    return-object v3
.end method

.method public static fastBlur(Landroid/content/Context;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 1

    .line 1
    invoke-static {p1}, Lmiuix/graphics/BitmapFactory;->copyToEmpty(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2
    invoke-static {p0, p1, v0, p2}, Lmiuix/graphics/BitmapFactory;->fastBlur(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public static fastBlur(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 2

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    if-eqz p2, :cond_1

    .line 3
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 4
    :cond_1
    invoke-static {p1}, Lmiuix/graphics/BitmapFactory;->copyToEmpty(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 5
    :cond_2
    invoke-static {p0, p1, p2, p3}, Lmiuix/graphics/BitmapFactory;->fastblur_v17(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    return-object p2
.end method

.method public static fastblur_v17(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 9

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    const/16 v2, 0x19

    if-le p3, v2, :cond_0

    mul-int/lit8 v1, v1, 0x2

    .line 1
    div-int/lit8 p3, p3, 0x2

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 3
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-ne v1, v0, :cond_1

    move-object v2, p1

    goto :goto_1

    .line 4
    :cond_1
    div-int/2addr v2, v1

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    div-int/2addr v3, v1

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {p1, v2, v3}, Lmiuix/graphics/BitmapFactory;->scaleBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 5
    :goto_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    if-nez v3, :cond_2

    .line 6
    new-instance v3, Lmiuix/graphics/BitmapFactory$1;

    invoke-direct {v3, p0}, Lmiuix/graphics/BitmapFactory$1;-><init>(Landroid/content/Context;)V

    move-object p0, v3

    .line 7
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    const-string v4, "android.graphics.Bitmap$Config"

    invoke-virtual {v3, v4}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 8
    invoke-virtual {v3}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v3

    .line 9
    array-length v4, v3

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v4, :cond_4

    aget-object v6, v3, v5

    .line 10
    check-cast v6, Ljava/lang/Enum;

    .line 11
    invoke-virtual {v6}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v7

    const-string v8, "RGBA_F16"

    .line 12
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v7

    if-ne v7, v6, :cond_3

    .line 13
    invoke-static {v2}, Lmiuix/graphics/BitmapFactory;->transferF16ToARGB(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 14
    :catch_0
    :cond_4
    :goto_3
    sget-object v3, Lmiuix/graphics/BitmapFactory;->sLockForRsContext:Ljava/lang/Object;

    monitor-enter v3

    .line 15
    :try_start_1
    sget-object v4, Lmiuix/graphics/BitmapFactory;->sRsContext:Landroid/renderscript/RenderScript;

    if-nez v4, :cond_5

    .line 16
    invoke-static {p0}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    move-result-object p0

    sput-object p0, Lmiuix/graphics/BitmapFactory;->sRsContext:Landroid/renderscript/RenderScript;

    :cond_5
    if-ne v1, v0, :cond_6

    move-object p0, p2

    goto :goto_4

    :cond_6
    move-object p0, v2

    .line 17
    :goto_4
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v4

    if-eq v1, v4, :cond_7

    .line 18
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v2, v1, v0}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 19
    :cond_7
    sget-object v0, Lmiuix/graphics/BitmapFactory;->sRsContext:Landroid/renderscript/RenderScript;

    invoke-static {v0, v2}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    move-result-object v0

    .line 20
    sget-object v1, Lmiuix/graphics/BitmapFactory;->sRsContext:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;)Landroid/renderscript/Allocation;

    move-result-object v1

    .line 21
    sget-object v4, Lmiuix/graphics/BitmapFactory;->sRsContext:Landroid/renderscript/RenderScript;

    sget-object v5, Lmiuix/graphics/BitmapFactory;->sRsContext:Landroid/renderscript/RenderScript;

    invoke-static {v5}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/renderscript/ScriptIntrinsicBlur;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicBlur;

    move-result-object v4

    int-to-float p3, p3

    .line 22
    invoke-virtual {v4, p3}, Landroid/renderscript/ScriptIntrinsicBlur;->setRadius(F)V

    .line 23
    invoke-virtual {v4, v0}, Landroid/renderscript/ScriptIntrinsicBlur;->setInput(Landroid/renderscript/Allocation;)V

    .line 24
    invoke-virtual {v4, v1}, Landroid/renderscript/ScriptIntrinsicBlur;->forEach(Landroid/renderscript/Allocation;)V

    .line 25
    invoke-virtual {v1, p0}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    if-eq p0, p2, :cond_8

    .line 26
    invoke-static {p0, p2}, Lmiuix/graphics/BitmapFactory;->scaleBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    :cond_8
    if-eq v2, p1, :cond_9

    .line 27
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    :cond_9
    if-eq p0, p2, :cond_a

    .line 28
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 29
    :cond_a
    invoke-virtual {v0}, Landroid/renderscript/Allocation;->destroy()V

    .line 30
    invoke-virtual {v1}, Landroid/renderscript/Allocation;->destroy()V

    .line 31
    invoke-virtual {v4}, Landroid/renderscript/ScriptIntrinsicBlur;->destroy()V

    .line 32
    monitor-exit v3

    return-object p2

    :catchall_0
    move-exception p0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static getBitmapColorMode(Landroid/graphics/Bitmap;I)I
    .locals 17

    move-object/from16 v0, p0

    .line 1
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    div-int v1, v1, p1

    .line 2
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int v2, v2, p1

    mul-int v3, v2, v1

    .line 3
    div-int/lit8 v3, v3, 0x5

    .line 4
    invoke-static {v0, v2, v1}, Lmiuix/graphics/BitmapFactory;->scaleBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v4

    const/4 v5, 0x2

    const/4 v6, 0x0

    move v7, v6

    move v8, v7

    :goto_0
    if-ge v7, v2, :cond_3

    move v9, v6

    :goto_1
    if-ge v9, v1, :cond_2

    .line 5
    invoke-virtual {v4, v7, v9}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v10

    const/high16 v11, 0xff0000

    and-int/2addr v11, v10

    shr-int/lit8 v11, v11, 0x10

    const v12, 0xff00

    and-int/2addr v12, v10

    shr-int/lit8 v12, v12, 0x8

    and-int/lit16 v10, v10, 0xff

    int-to-float v11, v11

    float-to-double v13, v11

    const-wide v15, 0x3fd3333333333333L    # 0.3

    mul-double/2addr v13, v15

    int-to-float v11, v12

    float-to-double v11, v11

    const-wide v15, 0x3fe2e147ae147ae1L    # 0.59

    mul-double/2addr v11, v15

    add-double/2addr v13, v11

    int-to-float v10, v10

    float-to-double v10, v10

    const-wide v15, 0x3fbc28f5c28f5c29L    # 0.11

    mul-double/2addr v10, v15

    add-double/2addr v13, v10

    double-to-int v10, v13

    const/16 v11, 0xb4

    if-ge v10, v11, :cond_1

    add-int/lit8 v8, v8, 0x1

    if-le v8, v3, :cond_0

    const/4 v5, 0x1

    :cond_0
    mul-int/lit8 v10, v3, 0x2

    if-le v8, v10, :cond_1

    move v5, v6

    goto :goto_2

    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_3
    if-eq v4, v0, :cond_4

    .line 6
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    :cond_4
    return v5
.end method

.method public static getBitmapSize(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/BitmapFactory$Options;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 8
    :try_start_0
    new-instance v1, Lmiuix/io/ResettableInputStream;

    invoke-direct {v1, p0, p1}, Lmiuix/io/ResettableInputStream;-><init>(Landroid/content/Context;Landroid/net/Uri;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 9
    :try_start_1
    invoke-static {v1}, Lmiuix/graphics/BitmapFactory;->getBitmapSize(Lmiuix/io/ResettableInputStream;)Landroid/graphics/BitmapFactory$Options;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    invoke-virtual {v1}, Lmiuix/io/ResettableInputStream;->close()V

    return-object p0

    :catchall_0
    move-exception p0

    move-object v0, v1

    goto :goto_0

    :catchall_1
    move-exception p0

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lmiuix/io/ResettableInputStream;->close()V

    .line 11
    :cond_0
    throw p0
.end method

.method public static getBitmapSize(Ljava/lang/String;)Landroid/graphics/BitmapFactory$Options;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 4
    :try_start_0
    new-instance v1, Lmiuix/io/ResettableInputStream;

    invoke-direct {v1, p0}, Lmiuix/io/ResettableInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5
    :try_start_1
    invoke-static {v1}, Lmiuix/graphics/BitmapFactory;->getBitmapSize(Lmiuix/io/ResettableInputStream;)Landroid/graphics/BitmapFactory$Options;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6
    invoke-virtual {v1}, Lmiuix/io/ResettableInputStream;->close()V

    return-object p0

    :catchall_0
    move-exception p0

    move-object v0, v1

    goto :goto_0

    :catchall_1
    move-exception p0

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lmiuix/io/ResettableInputStream;->close()V

    .line 7
    :cond_0
    throw p0
.end method

.method public static getBitmapSize(Lmiuix/io/ResettableInputStream;)Landroid/graphics/BitmapFactory$Options;
    .locals 2

    .line 1
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 v1, 0x0

    .line 3
    invoke-static {p0, v1, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public static getCachedCanvas()Landroid/graphics/Canvas;
    .locals 2

    .line 1
    sget-object v0, Lmiuix/graphics/BitmapFactory;->sCanvasCache:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Canvas;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    .line 3
    sget-object v1, Lmiuix/graphics/BitmapFactory;->sCanvasCache:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method public static getRoundBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .locals 1

    .line 1
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p0, p1, v0}, Lmiuix/graphics/BitmapFactory;->getRoundBitmap(Landroid/graphics/Bitmap;FLandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static getRoundBitmap(Landroid/graphics/Bitmap;FLandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 6

    .line 2
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-static {v0, v1, p2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 3
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 4
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    const/4 v2, 0x1

    .line 5
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 6
    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v5, 0x0

    invoke-direct {v2, v5, v5, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 7
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3, v2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 8
    invoke-virtual {v0, v5, v5, v5, v5}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 9
    invoke-virtual {v0, v3, p1, p1, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 10
    new-instance p1, Landroid/graphics/PorterDuffXfermode;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 11
    invoke-virtual {v0, p0, v2, v3, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-object p2
.end method

.method public static getWordFromName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    invoke-static {p0}, Lmiuix/graphics/BitmapFactory;->containsEastAsianCharacter(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3
    invoke-static {p0}, Lmiuix/graphics/BitmapFactory;->removeSuffix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 4
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object v1

    .line 5
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    .line 6
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 7
    invoke-static {p0, v0, v1}, Lmiuix/core/util/Utf8TextUtils;->subString(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isPngFormat(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    new-instance v1, Lmiuix/io/ResettableInputStream;

    invoke-direct {v1, p0, p1}, Lmiuix/io/ResettableInputStream;-><init>(Landroid/content/Context;Landroid/net/Uri;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2
    :try_start_1
    invoke-static {v1}, Lmiuix/graphics/BitmapFactory;->isPngFormat(Lmiuix/io/ResettableInputStream;)Z

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3
    invoke-virtual {v1}, Lmiuix/io/ResettableInputStream;->close()V

    return p0

    :catchall_0
    move-exception p0

    move-object v0, v1

    goto :goto_0

    :catchall_1
    move-exception p0

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lmiuix/io/ResettableInputStream;->close()V

    .line 4
    :cond_0
    throw p0
.end method

.method public static isPngFormat(Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 5
    :try_start_0
    new-instance v1, Lmiuix/io/ResettableInputStream;

    invoke-direct {v1, p0}, Lmiuix/io/ResettableInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 6
    :try_start_1
    invoke-static {v1}, Lmiuix/graphics/BitmapFactory;->isPngFormat(Lmiuix/io/ResettableInputStream;)Z

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    invoke-virtual {v1}, Lmiuix/io/ResettableInputStream;->close()V

    return p0

    :catchall_0
    move-exception p0

    move-object v0, v1

    goto :goto_0

    :catchall_1
    move-exception p0

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lmiuix/io/ResettableInputStream;->close()V

    .line 8
    :cond_0
    throw p0
.end method

.method public static isPngFormat(Lmiuix/io/ResettableInputStream;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lmiuix/graphics/BitmapFactory;->PNG_HEAD_FORMAT:[B

    array-length v0, v0

    new-array v1, v0, [B

    .line 10
    invoke-virtual {p0, v1}, Lmiuix/io/ResettableInputStream;->read([B)I

    move-result p0

    if-lt p0, v0, :cond_0

    .line 11
    invoke-static {v1}, Lmiuix/graphics/BitmapFactory;->isPngFormat([B)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isPngFormat([B)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    .line 12
    array-length v1, p0

    sget-object v2, Lmiuix/graphics/BitmapFactory;->PNG_HEAD_FORMAT:[B

    array-length v2, v2

    if-ge v1, v2, :cond_0

    goto :goto_1

    :cond_0
    move v1, v0

    .line 13
    :goto_0
    sget-object v2, Lmiuix/graphics/BitmapFactory;->PNG_HEAD_FORMAT:[B

    array-length v3, v2

    if-ge v1, v3, :cond_2

    .line 14
    aget-byte v3, p0, v1

    aget-byte v2, v2, v1

    if-eq v3, v2, :cond_1

    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_1
    return v0
.end method

.method public static maskOutBitmap(Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;
    .locals 9

    const/4 v0, 0x0

    if-nez p2, :cond_0

    if-nez p4, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    if-nez p2, :cond_3

    .line 1
    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result p2

    if-lez p2, :cond_2

    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result p2

    if-gtz p2, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result p2

    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result v0

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, v0, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p2

    goto :goto_1

    :cond_2
    :goto_0
    return-object v0

    :cond_3
    if-nez p4, :cond_4

    .line 3
    new-instance p4, Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-direct {p4, v1, v1, v0, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 4
    :cond_4
    :goto_1
    invoke-static {}, Lmiuix/graphics/BitmapFactory;->getCachedCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    .line 5
    invoke-virtual {v0, p2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 6
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    if-eqz p1, :cond_5

    .line 7
    invoke-virtual {p1, p4}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 8
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_5
    if-nez p3, :cond_8

    .line 9
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    .line 10
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p3

    .line 11
    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 12
    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    int-to-float v2, v2

    div-float v4, v3, v2

    int-to-float v5, p1

    div-float v2, v5, v2

    int-to-float v6, p3

    div-float v3, v6, v3

    cmpl-float v7, v2, v3

    if-lez v7, :cond_6

    div-float/2addr v6, v4

    float-to-int v2, v6

    sub-int/2addr p1, v2

    .line 13
    div-int/lit8 p1, p1, 0x2

    move v8, v1

    move v1, p1

    move p1, v2

    move v2, v8

    goto :goto_2

    :cond_6
    cmpg-float v2, v2, v3

    if-gez v2, :cond_7

    mul-float/2addr v4, v5

    float-to-int v2, v4

    sub-int/2addr p3, v2

    .line 14
    div-int/lit8 p3, p3, 0x2

    move v8, v2

    move v2, p3

    move p3, v8

    goto :goto_2

    :cond_7
    move v2, v1

    .line 15
    :goto_2
    new-instance v3, Landroid/graphics/Rect;

    add-int/2addr p1, v1

    add-int/2addr p3, v2

    invoke-direct {v3, v1, v2, p1, p3}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object p3, v3

    .line 16
    :cond_8
    sget-object p1, Lmiuix/graphics/BitmapFactory;->sSrcInPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p0, p3, p4, p1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-object p2
.end method

.method public static removeSuffix(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    move-object v0, p0

    :cond_1
    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    .line 2
    :goto_0
    sget-object v4, Lmiuix/graphics/BitmapFactory;->APPELLATION_SUFFIX:[Ljava/lang/String;

    array-length v5, v4

    const/4 v6, 0x1

    if-ge v2, v5, :cond_5

    .line 3
    aget-object v4, v4, v2

    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 4
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    sget-object v4, Lmiuix/graphics/BitmapFactory;->APPELLATION_SUFFIX:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_1
    move v3, v6

    goto :goto_2

    .line 5
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v6

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 6
    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lmiuix/graphics/BitmapFactory;->containsEastAsianCharacter(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 7
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v6

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 8
    :cond_3
    :goto_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_3

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    :goto_3
    if-eqz v3, :cond_6

    .line 9
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_6
    if-eqz v0, :cond_7

    .line 10
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 11
    :cond_7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 12
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v6

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public static saveToFile(Landroid/graphics/Bitmap;Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0}, Lmiuix/graphics/BitmapFactory;->saveToFile(Landroid/graphics/Bitmap;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static saveToFile(Landroid/graphics/Bitmap;Ljava/lang/String;Z)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_2

    const/4 v0, 0x0

    .line 2
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p2, :cond_0

    .line 3
    :try_start_1
    sget-object p1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    goto :goto_0

    :cond_0
    sget-object p1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    :goto_0
    const/16 p2, 0x64

    invoke-virtual {p0, p1, p2, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    move-object v0, v1

    goto :goto_1

    :catchall_1
    move-exception p0

    :goto_1
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 5
    :cond_1
    throw p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static scaleBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-ne v0, p1, :cond_1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-ne v0, p2, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 3
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 4
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    .line 5
    :cond_2
    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 6
    invoke-static {p0, p1}, Lmiuix/graphics/BitmapFactory;->scaleBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-object p0, p1

    :goto_0
    return-object p0
.end method

.method public static scaleBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 7

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_1

    .line 7
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 8
    :cond_1
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v1, 0x0

    .line 9
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 10
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    const/4 v3, 0x1

    .line 11
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 12
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 13
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setDither(Z)V

    .line 14
    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-direct {v3, v1, v1, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v4, Landroid/graphics/Rect;

    .line 15
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-direct {v4, v1, v1, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 16
    invoke-virtual {v0, p0, v3, v4, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    move-object p0, p1

    :goto_0
    return-object p0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static transferF16ToARGB(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-eqz v0, :cond_2

    if-nez v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 4
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 5
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    const/4 v3, 0x3

    .line 6
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setFlags(I)V

    const/4 v3, 0x0

    .line 7
    invoke-virtual {v1, p0, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 8
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 9
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    return-object v0

    :cond_2
    :goto_0
    return-object p0
.end method
