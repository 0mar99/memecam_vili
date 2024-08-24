.class public Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarAnimation;
.super Ljava/lang/Object;
.source "FuAvatarAnimation.java"


# instance fields
.field public bundle:Ljava/lang/String;

.field public decoration:[Ljava/lang/String;

.field public gender:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBundle()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarAnimation;->bundle:Ljava/lang/String;

    return-object p0
.end method

.method public getDecoration()[Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarAnimation;->decoration:[Ljava/lang/String;

    return-object p0
.end method

.method public getGender()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarAnimation;->gender:I

    return p0
.end method

.method public setBundle(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarAnimation;->bundle:Ljava/lang/String;

    return-void
.end method

.method public setDecoration([Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarAnimation;->decoration:[Ljava/lang/String;

    return-void
.end method

.method public setGender(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarAnimation;->gender:I

    return-void
.end method
