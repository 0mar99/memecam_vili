.class public Lcom/android/camera/features/mimojis/mimojias/bean/MimojiLevelInfo$1;
.super Ljava/lang/Object;
.source "MimojiLevelInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/features/mimojis/mimojias/bean/MimojiLevelInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/android/camera/features/mimojis/mimojias/bean/MimojiLevelInfo;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/camera/features/mimojis/mimojias/bean/MimojiLevelInfo;
    .locals 0

    .line 2
    new-instance p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiLevelInfo;

    invoke-direct {p0, p1}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiLevelInfo;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiLevelInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/camera/features/mimojis/mimojias/bean/MimojiLevelInfo;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/android/camera/features/mimojis/mimojias/bean/MimojiLevelInfo;
    .locals 0

    .line 2
    new-array p0, p1, [Lcom/android/camera/features/mimojis/mimojias/bean/MimojiLevelInfo;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiLevelInfo$1;->newArray(I)[Lcom/android/camera/features/mimojis/mimojias/bean/MimojiLevelInfo;

    move-result-object p0

    return-object p0
.end method
