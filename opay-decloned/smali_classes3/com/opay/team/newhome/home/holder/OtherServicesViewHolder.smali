.class public final Lcom/opay/team/newhome/home/holder/OtherServicesViewHolder;
.super Lcom/opay/team/newhome/home/holder/HomeConfigListViewHolder;
.source "OtherServicesViewHolder.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/opay/team/newhome/home/holder/OtherServicesViewHolder;",
        "Lcom/opay/team/newhome/home/holder/HomeConfigListViewHolder;",
        "Lfja;",
        "binding",
        "<init>",
        "(Lfja;)V",
        "sdk_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>(Lfja;)V
    .locals 1
    .param p1    # Lfja;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "binding"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Lcom/opay/team/newhome/home/holder/HomeConfigListViewHolder;-><init>(Lfja;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
