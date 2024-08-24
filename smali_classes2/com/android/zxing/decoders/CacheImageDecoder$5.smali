.class public Lcom/android/zxing/decoders/CacheImageDecoder$5;
.super Ljava/lang/Object;
.source "CacheImageDecoder.java"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/zxing/decoders/CacheImageDecoder;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "Lcom/android/zxing/decoders/CacheImageDecoder$FrameInfo;",
        "Lcom/android/zxing/decoders/CacheImageDecoder$FrameInfo;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/zxing/decoders/CacheImageDecoder;


# direct methods
.method public constructor <init>(Lcom/android/zxing/decoders/CacheImageDecoder;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/zxing/decoders/CacheImageDecoder$5;->this$0:Lcom/android/zxing/decoders/CacheImageDecoder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lcom/android/zxing/decoders/CacheImageDecoder$FrameInfo;)Lcom/android/zxing/decoders/CacheImageDecoder$FrameInfo;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2
    iget-object p0, p0, Lcom/android/zxing/decoders/CacheImageDecoder$5;->this$0:Lcom/android/zxing/decoders/CacheImageDecoder;

    invoke-static {p0, p1}, Lcom/android/zxing/decoders/CacheImageDecoder;->access$200(Lcom/android/zxing/decoders/CacheImageDecoder;Lcom/android/zxing/decoders/CacheImageDecoder$FrameInfo;)Lcom/android/zxing/decoders/CacheImageDecoder$ImageWrapper;

    move-result-object p0

    .line 3
    invoke-virtual {p1, p0}, Lcom/android/zxing/decoders/CacheImageDecoder$FrameInfo;->setImage(Lcom/android/zxing/decoders/CacheImageDecoder$ImageWrapper;)V

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/android/zxing/decoders/CacheImageDecoder$FrameInfo;

    invoke-virtual {p0, p1}, Lcom/android/zxing/decoders/CacheImageDecoder$5;->apply(Lcom/android/zxing/decoders/CacheImageDecoder$FrameInfo;)Lcom/android/zxing/decoders/CacheImageDecoder$FrameInfo;

    move-result-object p0

    return-object p0
.end method
