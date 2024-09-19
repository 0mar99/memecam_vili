.class public Lcom/android/camera/watermark/gen2/NewStyleTextWaterMark;
.super Lcom/android/camera/effect/renders/WaterMark;
.source "NewStyleTextWaterMark.java"


# static fields
.field public static final RATIO:F = 0.87f

.field public static final TAG:Ljava/lang/String; = "NewStyleTextWaterMark"

.field public static final TEXT_COLOR:I = -0x1

.field public static final TEXT_PIXEL_SIZE:F = 92.0f


# instance fields
.field public mCenterX:I

.field public mCenterY:I

.field public mCharMargin:I

.field public mIsCinematicAspectRatio:Z

.field public mPaddingX:I

.field public mPaddingY:I

.field public mWaterHeight:I

.field public mWaterText:Ljava/lang/String;

.field public mWaterTexture:Lcom/android/gallery3d/ui/BasicTexture;

.field public mWaterWidth:I


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIIZ)V
    .locals 6

    .line 1
    invoke-direct {p0, p2, p3, p4}, Lcom/android/camera/effect/renders/WaterMark;-><init>(III)V

    .line 2
    iput-boolean p5, p0, Lcom/android/camera/watermark/gen2/NewStyleTextWaterMark;->mIsCinematicAspectRatio:Z

    .line 3
    invoke-static {p2, p3}, Lcom/android/camera/watermark/WaterMarkUtil;->getWatermarkRatio(II)F

    move-result p5

    .line 4
    invoke-direct {p0}, Lcom/android/camera/watermark/gen2/NewStyleTextWaterMark;->getTextSize()F

    move-result v0

    mul-float/2addr v0, p5

    .line 5
    invoke-static {}, Lcom/android/camera/watermark/WaterMarkUtil;->getWaterMarkPaddingX()F

    move-result v1

    mul-float/2addr v1, p5

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/android/camera/watermark/gen2/NewStyleTextWaterMark;->mPaddingX:I

    .line 6
    invoke-static {}, Lcom/android/camera/watermark/WaterMarkUtil;->getWaterMarkPaddingY()F

    move-result v1

    mul-float/2addr v1, p5

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result p5

    and-int/lit8 p5, p5, -0x2

    iput p5, p0, Lcom/android/camera/watermark/gen2/NewStyleTextWaterMark;->mPaddingY:I

    .line 7
    iget-boolean p5, p0, Lcom/android/camera/watermark/gen2/NewStyleTextWaterMark;->mIsCinematicAspectRatio:Z

    const/16 v1, 0x10e

    const/16 v2, 0x5a

    if-eqz p5, :cond_3

    .line 8
    invoke-static {}, Lcom/android/camera/watermark/WaterMarkUtil;->getCinematicAspectWaterMarkRatio()F

    move-result p5

    mul-float/2addr v0, p5

    .line 9
    iget p5, p0, Lcom/android/camera/watermark/gen2/NewStyleTextWaterMark;->mPaddingX:I

    int-to-float p5, p5

    invoke-static {}, Lcom/android/camera/watermark/WaterMarkUtil;->getCinematicAspectWaterMarkRatio()F

    move-result v3

    mul-float/2addr p5, v3

    float-to-int p5, p5

    iput p5, p0, Lcom/android/camera/watermark/gen2/NewStyleTextWaterMark;->mPaddingX:I

    .line 10
    iget p5, p0, Lcom/android/camera/watermark/gen2/NewStyleTextWaterMark;->mPaddingY:I

    int-to-float p5, p5

    invoke-static {}, Lcom/android/camera/watermark/WaterMarkUtil;->getCinematicAspectWaterMarkRatio()F

    move-result v3

    mul-float/2addr p5, v3

    float-to-int p5, p5

    iput p5, p0, Lcom/android/camera/watermark/gen2/NewStyleTextWaterMark;->mPaddingY:I

    if-eq p4, v2, :cond_0

    if-ne p4, v1, :cond_1

    :cond_0
    if-le p2, p3, :cond_1

    move v5, p3

    move p3, p2

    move p2, v5

    .line 11
    :cond_1
    invoke-static {p2, p3}, Lcom/android/camera/watermark/WaterMarkUtil;->getWatermarkCinematicAspectMargin(II)I

    move-result p5

    if-ge p2, p3, :cond_2

    .line 12
    iget p2, p0, Lcom/android/camera/watermark/gen2/NewStyleTextWaterMark;->mPaddingX:I

    add-int/2addr p2, p5

    iput p2, p0, Lcom/android/camera/watermark/gen2/NewStyleTextWaterMark;->mPaddingX:I

    goto :goto_0

    .line 13
    :cond_2
    iget p2, p0, Lcom/android/camera/watermark/gen2/NewStyleTextWaterMark;->mPaddingY:I

    add-int/2addr p2, p5

    iput p2, p0, Lcom/android/camera/watermark/gen2/NewStyleTextWaterMark;->mPaddingY:I

    .line 14
    :cond_3
    :goto_0
    sget-object p2, Lcom/android/camera/watermark/gen2/NewStyleTextWaterMark;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "ImageWaterMark: textSize = "

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p5, ", mPaddingX = "

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/camera/watermark/gen2/NewStyleTextWaterMark;->mPaddingX:I

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mPaddingY = "

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/camera/watermark/gen2/NewStyleTextWaterMark;->mPaddingY:I

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    iput-object p1, p0, Lcom/android/camera/watermark/gen2/NewStyleTextWaterMark;->mWaterText:Ljava/lang/String;

    const/4 p2, -0x1

    const/4 p3, 0x2

    .line 16
    invoke-static {p1, v0, p2, p3}, Lcom/android/camera/watermark/gen2/StringTexture;->newInstance(Ljava/lang/String;FII)Lcom/android/camera/watermark/gen2/StringTexture;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/watermark/gen2/NewStyleTextWaterMark;->mWaterTexture:Lcom/android/gallery3d/ui/BasicTexture;

    .line 17
    invoke-virtual {p1}, Lcom/android/gallery3d/ui/BasicTexture;->getWidth()I

    move-result p1

    iput p1, p0, Lcom/android/camera/watermark/gen2/NewStyleTextWaterMark;->mWaterWidth:I

    .line 18
    iget-object p1, p0, Lcom/android/camera/watermark/gen2/NewStyleTextWaterMark;->mWaterTexture:Lcom/android/gallery3d/ui/BasicTexture;

    invoke-virtual {p1}, Lcom/android/gallery3d/ui/BasicTexture;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/android/camera/watermark/gen2/NewStyleTextWaterMark;->mWaterHeight:I

    int-to-float p1, p1

    const/high16 p2, 0x3f800000    # 1.0f

    .line 19
    invoke-direct {p0}, Lcom/android/camera/watermark/gen2/NewStyleTextWaterMark;->getTextMargin()F

    move-result p3

    sub-float/2addr p2, p3

    mul-float/2addr p1, p2

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p1, p2

    float-to-int p1, p1

    iput p1, p0, Lcom/android/camera/watermark/gen2/NewStyleTextWaterMark;->mCharMargin:I

    .line 20
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p1

    invoke-virtual {p1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00OoOoO()Z

    move-result p1

    if-nez p1, :cond_6

    if-eq p4, v2, :cond_5

    if-ne p4, v1, :cond_4

    goto :goto_1

    .line 21
    :cond_4
    iget p1, p0, Lcom/android/camera/watermark/gen2/NewStyleTextWaterMark;->mPaddingY:I

    iget p2, p0, Lcom/android/camera/watermark/gen2/NewStyleTextWaterMark;->mCharMargin:I

    sub-int/2addr p1, p2

    and-int/lit8 p1, p1, -0x2

    iput p1, p0, Lcom/android/camera/watermark/gen2/NewStyleTextWaterMark;->mPaddingY:I

    goto :goto_2

    .line 22
    :cond_5
    :goto_1
    iget p1, p0, Lcom/android/camera/watermark/gen2/NewStyleTextWaterMark;->mPaddingX:I

    iget p2, p0, Lcom/android/camera/watermark/gen2/NewStyleTextWaterMark;->mCharMargin:I

    sub-int/2addr p1, p2

    and-int/lit8 p1, p1, -0x2

    iput p1, p0, Lcom/android/camera/watermark/gen2/NewStyleTextWaterMark;->mPaddingX:I

    .line 23
    :cond_6
    :goto_2
    sget-object p1, Lcom/android/camera/watermark/gen2/NewStyleTextWaterMark;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "ImageWaterMark: after mWaterWidth = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/android/camera/watermark/gen2/NewStyleTextWaterMark;->mWaterWidth:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", mWaterHeight = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/android/camera/watermark/gen2/NewStyleTextWaterMark;->mWaterHeight:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", mCharMargin = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/android/camera/watermark/gen2/NewStyleTextWaterMark;->mCharMargin:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/android/camera/watermark/gen2/NewStyleTextWaterMark;->mPaddingX:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/android/camera/watermark/gen2/NewStyleTextWaterMark;->mPaddingY:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    invoke-direct {p0}, Lcom/android/camera/watermark/gen2/NewStyleTextWaterMark;->calcCenterAxis()V

    .line 25
    sget-object p1, Lcom/android/camera/Util;->sIsDumpLog:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 26
    invoke-direct {p0}, Lcom/android/camera/watermark/gen2/NewStyleTextWaterMark;->print()V

    :cond_7
    return-void
.end method

.method private calcCenterAxis()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera/effect/renders/WaterMark;->mOrientation:I

    if-eqz v0, :cond_3

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_2

    const/16 v1, 0xb4

    if-eq v0, v1, :cond_1

    const/16 v1, 0x10e

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget v0, p0, Lcom/android/camera/watermark/gen2/NewStyleTextWaterMark;->mPaddingY:I

    iget v1, p0, Lcom/android/camera/watermark/gen2/NewStyleTextWaterMark;->mWaterHeight:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/watermark/gen2/NewStyleTextWaterMark;->mCenterX:I

    .line 3
    iget v0, p0, Lcom/android/camera/effect/renders/WaterMark;->mPictureHeight:I

    iget v1, p0, Lcom/android/camera/watermark/gen2/NewStyleTextWaterMark;->mPaddingX:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/camera/watermark/gen2/NewStyleTextWaterMark;->mWaterWidth:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/watermark/gen2/NewStyleTextWaterMark;->mCenterY:I

    goto :goto_0

    .line 4
    :cond_1
    iget v0, p0, Lcom/android/camera/watermark/gen2/NewStyleTextWaterMark;->mPaddingX:I

    iget v1, p0, Lcom/android/camera/watermark/gen2/NewStyleTextWaterMark;->mWaterWidth:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/watermark/gen2/NewStyleTextWaterMark;->mCenterX:I

    .line 5
    iget v0, p0, Lcom/android/camera/watermark/gen2/NewStyleTextWaterMark;->mPaddingY:I

    iget v1, p0, Lcom/android/camera/watermark/gen2/NewStyleTextWaterMark;->mWaterHeight:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/watermark/gen2/NewStyleTextWaterMark;->mCenterY:I

    goto :goto_0

    .line 6
    :cond_2
    iget v0, p0, Lcom/android/camera/effect/renders/WaterMark;->mPictureWidth:I

    iget v1, p0, Lcom/android/camera/watermark/gen2/NewStyleTextWaterMark;->mPaddingY:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/camera/watermark/gen2/NewStyleTextWaterMark;->mWaterHeight:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/watermark/gen2/NewStyleTextWaterMark;->mCenterX:I

    .line 7
    iget v0, p0, Lcom/android/camera/watermark/gen2/NewStyleTextWaterMark;->mPaddingX:I

    iget v1, p0, Lcom/android/camera/watermark/gen2/NewStyleTextWaterMark;->mWaterWidth:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/watermark/gen2/NewStyleTextWaterMark;->mCenterY:I

    goto :goto_0

    .line 8
    :cond_3
    iget v0, p0, Lcom/android/camera/effect/renders/WaterMark;->mPictureWidth:I

    iget v1, p0, Lcom/android/camera/watermark/gen2/NewStyleTextWaterMark;->mPaddingX:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/camera/watermark/gen2/NewStyleTextWaterMark;->mWaterWidth:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/watermark/gen2/NewStyleTextWaterMark;->mCenterX:I

    .line 9
    iget v0, p0, Lcom/android/camera/effect/renders/WaterMark;->mPictureHeight:I

    iget v1, p0, Lcom/android/camera/watermark/gen2/NewStyleTextWaterMark;->mPaddingY:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/camera/watermark/gen2/NewStyleTextWaterMark;->mWaterHeight:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/watermark/gen2/NewStyleTextWaterMark;->mCenterY:I

    :goto_0
    return-void
.end method

.method private getTextMargin()F
    .locals 0

    .line 1
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p0

    invoke-virtual {p0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00OoOoO()Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x3f19999a    # 0.6f

    return p0

    :cond_0
    const p0, 0x3f5eb852    # 0.87f

    return p0
.end method

.method private getTextSize()F
    .locals 0

    .line 1
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p0

    invoke-virtual {p0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00OoOoO()Z

    move-result p0

    if-eqz p0, :cond_0

    const/high16 p0, 0x42960000    # 75.0f

    return p0

    :cond_0
    const/high16 p0, 0x42b80000    # 92.0f

    return p0
.end method

.method private print()V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera/watermark/gen2/NewStyleTextWaterMark;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WaterMark pictureWidth="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/camera/effect/renders/WaterMark;->mPictureWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " pictureHeight="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/camera/effect/renders/WaterMark;->mPictureHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " waterText="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/watermark/gen2/NewStyleTextWaterMark;->mWaterText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " centerX="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/camera/watermark/gen2/NewStyleTextWaterMark;->mCenterX:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " centerY="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/camera/watermark/gen2/NewStyleTextWaterMark;->mCenterY:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " waterWidth="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/camera/watermark/gen2/NewStyleTextWaterMark;->mWaterWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " waterHeight="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/camera/watermark/gen2/NewStyleTextWaterMark;->mWaterHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " paddingX="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/camera/watermark/gen2/NewStyleTextWaterMark;->mPaddingX:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " paddingY="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/camera/watermark/gen2/NewStyleTextWaterMark;->mPaddingY:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public getCenterX()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/watermark/gen2/NewStyleTextWaterMark;->mCenterX:I

    return p0
.end method

.method public getCenterY()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/watermark/gen2/NewStyleTextWaterMark;->mCenterY:I

    return p0
.end method

.method public getHeight()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/watermark/gen2/NewStyleTextWaterMark;->mWaterHeight:I

    return p0
.end method

.method public getPaddingX()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/watermark/gen2/NewStyleTextWaterMark;->mPaddingX:I

    return p0
.end method

.method public getPaddingY()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/watermark/gen2/NewStyleTextWaterMark;->mPaddingY:I

    return p0
.end method

.method public getTexture()Lcom/android/gallery3d/ui/BasicTexture;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/watermark/gen2/NewStyleTextWaterMark;->mWaterTexture:Lcom/android/gallery3d/ui/BasicTexture;

    return-object p0
.end method

.method public getWidth()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/watermark/gen2/NewStyleTextWaterMark;->mWaterWidth:I

    return p0
.end method
