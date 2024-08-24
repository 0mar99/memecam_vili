.class public Lcom/android/camera/effect/render/BaseOriginalFilter;
.super Lcom/android/camera/effect/render/GPUImageFilter;
.source "BaseOriginalFilter.java"

# interfaces
.implements Lcom/android/camera/effect/render/FilterDegreeAdjustController;


# static fields
.field public static final DEGREE_VALUE_MAX:I = 0x64

.field public static final DEGREE_VALUE_MIN:I


# instance fields
.field public mDegree:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/camera/effect/render/GPUImageFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public isDegreeAdjustSupported()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public setDegree(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/effect/render/BaseOriginalFilter;->isDegreeAdjustSupported()Z

    move-result v0

    if-eqz v0, :cond_2

    if-gez p1, :cond_0

    const/4 p1, 0x0

    :cond_0
    const/16 v0, 0x64

    if-le p1, v0, :cond_1

    move p1, v0

    .line 2
    :cond_1
    iput p1, p0, Lcom/android/camera/effect/render/BaseOriginalFilter;->mDegree:I

    return-void

    .line 3
    :cond_2
    new-instance p0, Ljava/lang/AssertionError;

    const-string p1, "Degree adjustment of the filter is not supported!"

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0
.end method
