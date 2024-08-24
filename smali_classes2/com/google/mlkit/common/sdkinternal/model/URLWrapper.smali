.class public Lcom/google/mlkit/common/sdkinternal/model/URLWrapper;
.super Ljava/lang/Object;
.source "com.google.mlkit:common@@18.7.0"


# instance fields
.field public final zza:Ljava/net/URL;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/mlkit/common/sdkinternal/model/URLWrapper;->zza:Ljava/net/URL;

    return-void
.end method


# virtual methods
.method public openConnection()Ljava/net/URLConnection;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/google/mlkit/common/sdkinternal/model/URLWrapper;->zza:Ljava/net/URL;

    invoke-virtual {p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    return-object p0
.end method
