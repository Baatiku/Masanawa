.class final Lteam/opay/pay/message/module/MessageCenterFragmentAdapter$bindExtraItem$1$2;
.super Lkotlin/jvm/internal/Lambda;
.source "MessageCenterFragmentAdapter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/message/module/MessageCenterFragmentAdapter;->v(Lcom/chad/library/adapter/base/BaseViewHolder;Lteam/opay/pay/message/bean/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lteam/opay/pay/message/bean/BodyItem;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "bodyItem",
        "Lteam/opay/pay/message/bean/BodyItem;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $helper:Lcom/chad/library/adapter/base/BaseViewHolder;

.field final synthetic $item:Lteam/opay/pay/message/bean/Message;

.field final synthetic this$0:Lteam/opay/pay/message/module/MessageCenterFragmentAdapter;


# direct methods
.method public constructor <init>(Lteam/opay/pay/message/module/MessageCenterFragmentAdapter;Lcom/chad/library/adapter/base/BaseViewHolder;Lteam/opay/pay/message/bean/Message;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/pay/message/module/MessageCenterFragmentAdapter$bindExtraItem$1$2;->this$0:Lteam/opay/pay/message/module/MessageCenterFragmentAdapter;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/pay/message/module/MessageCenterFragmentAdapter$bindExtraItem$1$2;->$helper:Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 4
    .line 5
    iput-object p3, p0, Lteam/opay/pay/message/module/MessageCenterFragmentAdapter$bindExtraItem$1$2;->$item:Lteam/opay/pay/message/bean/Message;

    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lteam/opay/pay/message/bean/BodyItem;

    invoke-virtual {p0, p1}, Lteam/opay/pay/message/module/MessageCenterFragmentAdapter$bindExtraItem$1$2;->invoke(Lteam/opay/pay/message/bean/BodyItem;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lteam/opay/pay/message/bean/BodyItem;)V
    .locals 3
    .param p1    # Lteam/opay/pay/message/bean/BodyItem;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "bodyItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lteam/opay/pay/message/module/MessageCenterFragmentAdapter$bindExtraItem$1$2;->this$0:Lteam/opay/pay/message/module/MessageCenterFragmentAdapter;

    iget-object v1, p0, Lteam/opay/pay/message/module/MessageCenterFragmentAdapter$bindExtraItem$1$2;->$helper:Lcom/chad/library/adapter/base/BaseViewHolder;

    iget-object v2, p0, Lteam/opay/pay/message/module/MessageCenterFragmentAdapter$bindExtraItem$1$2;->$item:Lteam/opay/pay/message/bean/Message;

    invoke-static {v0, v1, p1, v2}, Lteam/opay/pay/message/module/MessageCenterFragmentAdapter;->s(Lteam/opay/pay/message/module/MessageCenterFragmentAdapter;Lcom/chad/library/adapter/base/BaseViewHolder;Lteam/opay/pay/message/bean/BodyItem;Lteam/opay/pay/message/bean/Message;)V

    return-void
.end method
