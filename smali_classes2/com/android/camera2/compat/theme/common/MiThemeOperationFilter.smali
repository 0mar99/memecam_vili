.class public Lcom/android/camera2/compat/theme/common/MiThemeOperationFilter;
.super Ljava/lang/Object;
.source "MiThemeOperationFilter.java"

# interfaces
.implements Lcom/android/camera2/compat/theme/common/MiThemeOperationFilterInterface;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEffectController()Lcom/android/camera/effect/EffectController;
    .locals 0

    .line 1
    new-instance p0, Lcom/android/camera/effect/EffectController;

    invoke-direct {p0}, Lcom/android/camera/effect/EffectController;-><init>()V

    return-object p0
.end method

.method public setCvStyleEffect(I)V
    .locals 0

    return-void
.end method
