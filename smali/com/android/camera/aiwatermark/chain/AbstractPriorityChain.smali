.class public abstract Lcom/android/camera/aiwatermark/chain/AbstractPriorityChain;
.super Ljava/lang/Object;
.source "AbstractPriorityChain.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract createASDChain(Landroid/content/Context;)Lcom/android/camera/aiwatermark/handler/AbstractHandler;
.end method

.method public abstract createChain(Landroid/content/Context;I)Lcom/android/camera/aiwatermark/handler/AbstractHandler;
.end method
