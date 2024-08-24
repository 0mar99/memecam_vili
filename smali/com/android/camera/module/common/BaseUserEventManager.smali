.class public Lcom/android/camera/module/common/BaseUserEventManager;
.super Ljava/lang/Object;
.source "BaseUserEventManager.java"

# interfaces
.implements Lcom/android/camera/module/common/BaseUserEventManagerInterface;


# instance fields
.field public mPendingScreenSlideKeyCode:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPendingScreenSlideKeyCode()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/module/common/BaseUserEventManager;->mPendingScreenSlideKeyCode:I

    return p0
.end method

.method public setPendingScreenSlideKeyCode(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/module/common/BaseUserEventManager;->mPendingScreenSlideKeyCode:I

    return-void
.end method
