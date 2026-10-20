.class final Lteam/opay/spos/printer/function/DefaultPrintProvider$printInfo$2;
.super Lkotlin/jvm/internal/Lambda;
.source "DefaultPrintProvider.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/spos/printer/function/DefaultPrintProvider;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lteam/opay/spos/printer/api/PosPrintExtendInfo;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u0004\u0018\u00010\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Lteam/opay/spos/printer/api/PosPrintExtendInfo;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lteam/opay/spos/printer/function/DefaultPrintProvider;


# direct methods
.method public constructor <init>(Lteam/opay/spos/printer/function/DefaultPrintProvider;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/spos/printer/function/DefaultPrintProvider$printInfo$2;->this$0:Lteam/opay/spos/printer/function/DefaultPrintProvider;

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/spos/printer/function/DefaultPrintProvider$printInfo$2;->invoke()Lteam/opay/spos/printer/api/PosPrintExtendInfo;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Lteam/opay/spos/printer/api/PosPrintExtendInfo;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 2
    iget-object v0, p0, Lteam/opay/spos/printer/function/DefaultPrintProvider$printInfo$2;->this$0:Lteam/opay/spos/printer/function/DefaultPrintProvider;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "printOtherInfo"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    instance-of v2, v0, Lteam/opay/spos/printer/api/PosPrintExtendInfo;

    if-eqz v2, :cond_1

    move-object v1, v0

    check-cast v1, Lteam/opay/spos/printer/api/PosPrintExtendInfo;

    :cond_1
    return-object v1
.end method
