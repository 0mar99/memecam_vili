.class public abstract Lcom/android/camera/effect/renders/WaterMark;
.super Ljava/lang/Object;
.source "WaterMark.java"


# instance fields
.field public mCacheKey:Lcom/android/camera/effect/renders/CacheKey;

.field public mIsLTR:Z

.field public mOrientation:I

.field public mPictureHeight:I

.field public mPictureWidth:I


# direct methods
.method public constructor <init>(III)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00ooOo0()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/effect/renders/WaterMark;->mIsLTR:Z

    .line 3
    iput p1, p0, Lcom/android/camera/effect/renders/WaterMark;->mPictureWidth:I

    .line 4
    iput p2, p0, Lcom/android/camera/effect/renders/WaterMark;->mPictureHeight:I

    .line 5
    iput p3, p0, Lcom/android/camera/effect/renders/WaterMark;->mOrientation:I

    return-void
.end method


# virtual methods
.method public getCacheKey()Lcom/android/camera/effect/renders/CacheKey;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/effect/renders/WaterMark;->mCacheKey:Lcom/android/camera/effect/renders/CacheKey;

    return-object p0
.end method

.method public abstract getCenterX()I
.end method

.method public abstract getCenterY()I
.end method

.method public abstract getHeight()I
.end method

.method public getLeft()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/effect/renders/WaterMark;->getCenterX()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/camera/effect/renders/WaterMark;->getWidth()I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    sub-int/2addr v0, p0

    return v0
.end method

.method public abstract getPaddingX()I
.end method

.method public abstract getPaddingY()I
.end method

.method public abstract getTexture()Lcom/android/gallery3d/ui/BasicTexture;
.end method

.method public getTop()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/effect/renders/WaterMark;->getCenterY()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/camera/effect/renders/WaterMark;->getHeight()I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    sub-int/2addr v0, p0

    return v0
.end method

.method public abstract getWidth()I
.end method

.method public isLTR()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/effect/renders/WaterMark;->mIsLTR:Z

    return p0
.end method

.method public setCacheKey(Lcom/android/camera/effect/renders/CacheKey;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/effect/renders/WaterMark;->mCacheKey:Lcom/android/camera/effect/renders/CacheKey;

    return-void
.end method
