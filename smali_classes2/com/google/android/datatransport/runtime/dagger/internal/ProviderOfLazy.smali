.class public final Lcom/google/android/datatransport/runtime/dagger/internal/ProviderOfLazy;
.super Ljava/lang/Object;
.source "ProviderOfLazy.java"

# interfaces
.implements LOooO0Oo/OooO00o/OooO0OO;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "LOooO0Oo/OooO00o/OooO0OO<",
        "Lcom/google/android/datatransport/runtime/dagger/Lazy<",
        "TT;>;>;"
    }
.end annotation


# static fields
.field public static final synthetic $assertionsDisabled:Z


# instance fields
.field public final provider:LOooO0Oo/OooO00o/OooO0OO;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LOooO0Oo/OooO00o/OooO0OO<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(LOooO0Oo/OooO00o/OooO0OO;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LOooO0Oo/OooO00o/OooO0OO<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/datatransport/runtime/dagger/internal/ProviderOfLazy;->provider:LOooO0Oo/OooO00o/OooO0OO;

    return-void
.end method

.method public static create(LOooO0Oo/OooO00o/OooO0OO;)LOooO0Oo/OooO00o/OooO0OO;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LOooO0Oo/OooO00o/OooO0OO<",
            "TT;>;)",
            "LOooO0Oo/OooO00o/OooO0OO<",
            "Lcom/google/android/datatransport/runtime/dagger/Lazy<",
            "TT;>;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/datatransport/runtime/dagger/internal/ProviderOfLazy;

    invoke-static {p0}, Lcom/google/android/datatransport/runtime/dagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LOooO0Oo/OooO00o/OooO0OO;

    invoke-direct {v0, p0}, Lcom/google/android/datatransport/runtime/dagger/internal/ProviderOfLazy;-><init>(LOooO0Oo/OooO00o/OooO0OO;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/google/android/datatransport/runtime/dagger/Lazy;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/datatransport/runtime/dagger/Lazy<",
            "TT;>;"
        }
    .end annotation

    .line 2
    iget-object p0, p0, Lcom/google/android/datatransport/runtime/dagger/internal/ProviderOfLazy;->provider:LOooO0Oo/OooO00o/OooO0OO;

    invoke-static {p0}, Lcom/google/android/datatransport/runtime/dagger/internal/DoubleCheck;->lazy(LOooO0Oo/OooO00o/OooO0OO;)Lcom/google/android/datatransport/runtime/dagger/Lazy;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/datatransport/runtime/dagger/internal/ProviderOfLazy;->get()Lcom/google/android/datatransport/runtime/dagger/Lazy;

    move-result-object p0

    return-object p0
.end method
