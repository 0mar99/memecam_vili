.class public Lcom/android/gallery3d/ui/GLPaint;
.super Ljava/lang/Object;
.source "GLPaint.java"


# instance fields
.field public mColor:I

.field public mLineWidth:F


# direct methods
.method public constructor <init>(FI)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    iput v0, p0, Lcom/android/gallery3d/ui/GLPaint;->mLineWidth:F

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/android/gallery3d/ui/GLPaint;->mColor:I

    .line 4
    iput p1, p0, Lcom/android/gallery3d/ui/GLPaint;->mLineWidth:F

    .line 5
    iput p2, p0, Lcom/android/gallery3d/ui/GLPaint;->mColor:I

    return-void
.end method


# virtual methods
.method public getColor()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/gallery3d/ui/GLPaint;->mColor:I

    return p0
.end method

.method public getLineWidth()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/gallery3d/ui/GLPaint;->mLineWidth:F

    return p0
.end method

.method public setColor(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/gallery3d/ui/GLPaint;->mColor:I

    return-void
.end method

.method public setLineWidth(F)V
    .locals 1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1
    :goto_0
    invoke-static {v0}, Lcom/android/gallery3d/ui/Utils;->assertTrue(Z)V

    .line 2
    iput p1, p0, Lcom/android/gallery3d/ui/GLPaint;->mLineWidth:F

    return-void
.end method
