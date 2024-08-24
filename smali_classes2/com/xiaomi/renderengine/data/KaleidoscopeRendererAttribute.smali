.class public Lcom/xiaomi/renderengine/data/KaleidoscopeRendererAttribute;
.super Lcom/xiaomi/renderengine/data/RendererAttribute;
.source "KaleidoscopeRendererAttribute.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "KaleidoscopeRendererAttribute"


# instance fields
.field public mKaleidoscopeId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/renderengine/data/RendererAttribute;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/xiaomi/renderengine/data/KaleidoscopeRendererAttribute;->reset()V

    return-void
.end method


# virtual methods
.method public reset()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/xiaomi/renderengine/data/KaleidoscopeRendererAttribute;->mKaleidoscopeId:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "KaleidoscopeRendererAttribute"

    aput-object v3, v1, v2

    iget-object p0, p0, Lcom/xiaomi/renderengine/data/KaleidoscopeRendererAttribute;->mKaleidoscopeId:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object p0, v1, v2

    const-string p0, "[%s] mKaleidoscopeId:(%s)"

    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
