.class public Lcom/android/camera/privacywatermark/EditHistoryAdapter$1;
.super Landroidx/recyclerview/widget/DiffUtil$ItemCallback;
.source "EditHistoryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/privacywatermark/EditHistoryAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/DiffUtil$ItemCallback<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/DiffUtil$ItemCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic areContentsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/privacywatermark/EditHistoryAdapter$1;->areContentsTheSame(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public areContentsTheSame(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 2
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/privacywatermark/EditHistoryAdapter$1;->areItemsTheSame(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public areItemsTheSame(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/privacywatermark/EditHistoryAdapter$1;->areContentsTheSame(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
