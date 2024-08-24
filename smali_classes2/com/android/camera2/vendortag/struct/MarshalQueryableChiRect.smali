.class public Lcom/android/camera2/vendortag/struct/MarshalQueryableChiRect;
.super Ljava/lang/Object;
.source "MarshalQueryableChiRect.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera2/vendortag/struct/MarshalQueryableChiRect$ChiRect;
    }
.end annotation


# static fields
.field public static final SIZE:I = 0x10

.field public static final TAG:Ljava/lang/String; = "MarshalQueryableChiRect"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getNativeSize()I
    .locals 1

    const/16 v0, 0x10

    return v0
.end method

.method public static unmarshal([B)Lcom/android/camera2/vendortag/struct/MarshalQueryableChiRect$ChiRect;
    .locals 4

    if-eqz p0, :cond_1

    .line 1
    array-length v0, p0

    invoke-static {}, Lcom/android/camera2/vendortag/struct/MarshalQueryableChiRect;->getNativeSize()I

    move-result v1

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 3
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    .line 4
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    .line 5
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    .line 6
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p0

    .line 7
    new-instance v3, Lcom/android/camera2/vendortag/struct/MarshalQueryableChiRect$ChiRect;

    invoke-direct {v3, v0, v1, v2, p0}, Lcom/android/camera2/vendortag/struct/MarshalQueryableChiRect$ChiRect;-><init>(IIII)V

    return-object v3

    .line 8
    :cond_1
    :goto_0
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 9
    invoke-static {}, Lcom/android/camera2/vendortag/struct/MarshalQueryableChiRect;->getNativeSize()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    array-length v3, p0

    :goto_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v2

    const-string p0, "Expected size should be %d, but got: %d"

    .line 10
    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "MarshalQueryableChiRect"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method
