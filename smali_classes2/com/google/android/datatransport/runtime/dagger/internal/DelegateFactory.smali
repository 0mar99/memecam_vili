.class public final Lcom/google/android/datatransport/runtime/dagger/internal/DelegateFactory;
.super Ljava/lang/Object;
.source "DelegateFactory.java"

# interfaces
.implements Lcom/google/android/datatransport/runtime/dagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/datatransport/runtime/dagger/internal/Factory<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public delegate:LOooO0Oo/OooO00o/OooO0OO;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LOooO0Oo/OooO00o/OooO0OO<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setDelegate(LOooO0Oo/OooO00o/OooO0OO;LOooO0Oo/OooO00o/OooO0OO;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LOooO0Oo/OooO00o/OooO0OO<",
            "TT;>;",
            "LOooO0Oo/OooO00o/OooO0OO<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/android/datatransport/runtime/dagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    check-cast p0, Lcom/google/android/datatransport/runtime/dagger/internal/DelegateFactory;

    .line 3
    iget-object v0, p0, Lcom/google/android/datatransport/runtime/dagger/internal/DelegateFactory;->delegate:LOooO0Oo/OooO00o/OooO0OO;

    if-nez v0, :cond_0

    .line 4
    iput-object p1, p0, Lcom/google/android/datatransport/runtime/dagger/internal/DelegateFactory;->delegate:LOooO0Oo/OooO00o/OooO0OO;

    return-void

    .line 5
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
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
    iget-object p0, p0, Lcom/google/android/datatransport/runtime/dagger/internal/DelegateFactory;->delegate:LOooO0Oo/OooO00o/OooO0OO;

    if-eqz p0, :cond_0

    .line 2
    invoke-interface {p0}, LOooO0Oo/OooO00o/OooO0OO;->get()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public getDelegate()LOooO0Oo/OooO00o/OooO0OO;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LOooO0Oo/OooO00o/OooO0OO<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/google/android/datatransport/runtime/dagger/internal/DelegateFactory;->delegate:LOooO0Oo/OooO00o/OooO0OO;

    invoke-static {p0}, Lcom/google/android/datatransport/runtime/dagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LOooO0Oo/OooO00o/OooO0OO;

    return-object p0
.end method

.method public setDelegatedProvider(LOooO0Oo/OooO00o/OooO0OO;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LOooO0Oo/OooO00o/OooO0OO<",
            "TT;>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/datatransport/runtime/dagger/internal/DelegateFactory;->setDelegate(LOooO0Oo/OooO00o/OooO0OO;LOooO0Oo/OooO00o/OooO0OO;)V

    return-void
.end method
