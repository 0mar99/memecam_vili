.class public final Lcom/android/camera/module/loader/WeakNullHolder;
.super Ljava/lang/Object;
.source "WeakNullHolder.java"

# interfaces
.implements Lcom/android/camera/module/loader/NullHolder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/android/camera/module/loader/NullHolder<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public mException:I

.field public final mValue:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/module/loader/WeakNullHolder;->mValue:Ljava/lang/ref/WeakReference;

    .line 3
    iput p2, p0, Lcom/android/camera/module/loader/WeakNullHolder;->mException:I

    return-void
.end method

.method public static of(Ljava/lang/Object;I)Lcom/android/camera/module/loader/WeakNullHolder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;I)",
            "Lcom/android/camera/module/loader/WeakNullHolder<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/android/camera/module/loader/WeakNullHolder;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/module/loader/WeakNullHolder;-><init>(Ljava/lang/Object;I)V

    return-object v0
.end method

.method public static ofNullable(Ljava/lang/Object;)Lcom/android/camera/module/loader/WeakNullHolder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/android/camera/module/loader/WeakNullHolder<",
            "TT;>;"
        }
    .end annotation

    const/16 v0, 0xe0

    .line 1
    invoke-static {p0, v0}, Lcom/android/camera/module/loader/WeakNullHolder;->of(Ljava/lang/Object;I)Lcom/android/camera/module/loader/WeakNullHolder;

    move-result-object p0

    return-object p0
.end method

.method public static ofNullable(Ljava/lang/Object;I)Lcom/android/camera/module/loader/WeakNullHolder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;I)",
            "Lcom/android/camera/module/loader/WeakNullHolder<",
            "TT;>;"
        }
    .end annotation

    .line 2
    invoke-static {p0, p1}, Lcom/android/camera/module/loader/WeakNullHolder;->of(Ljava/lang/Object;I)Lcom/android/camera/module/loader/WeakNullHolder;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/loader/WeakNullHolder;->mValue:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getException()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/module/loader/WeakNullHolder;->mException:I

    return p0
.end method

.method public isPresent()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/loader/WeakNullHolder;->mValue:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setException(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/module/loader/WeakNullHolder;->mException:I

    return-void
.end method
