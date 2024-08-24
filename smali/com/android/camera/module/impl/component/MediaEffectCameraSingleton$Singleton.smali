.class public Lcom/android/camera/module/impl/component/MediaEffectCameraSingleton$Singleton;
.super Ljava/lang/Object;
.source "MediaEffectCameraSingleton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/impl/component/MediaEffectCameraSingleton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Singleton"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/camera/module/impl/component/MediaEffectCameraSingleton;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/camera/module/impl/component/MediaEffectCameraSingleton;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/camera/module/impl/component/MediaEffectCameraSingleton;-><init>(Lcom/android/camera/module/impl/component/MediaEffectCameraSingleton$1;)V

    sput-object v0, Lcom/android/camera/module/impl/component/MediaEffectCameraSingleton$Singleton;->INSTANCE:Lcom/android/camera/module/impl/component/MediaEffectCameraSingleton;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
