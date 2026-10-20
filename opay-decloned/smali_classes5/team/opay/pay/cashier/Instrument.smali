.class public final Lteam/opay/pay/cashier/Instrument;
.super Ljava/lang/Object;
.source "CashDesk.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u007f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0003\u0008\u009d\u0001\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u00d1\u0004\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0004\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\u0008\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\u0008\u0012\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u0008\u0012\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u0008\u0012\u0008\u0010\r\u001a\u0004\u0018\u00010\u0008\u0012\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u0008\u0012\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0008\u0012\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0008\u0012\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0012\u0012\u001a\u0010\u0017\u001a\u0016\u0012\u0004\u0012\u00020\u0015\u0018\u00010\u0014j\n\u0012\u0004\u0012\u00020\u0015\u0018\u0001`\u0016\u0012\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0008\u0002\u0010\u001e\u001a\u00020\u001d\u0012\u0008\u0010\u001f\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0010 \u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0010!\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0010\"\u001a\u0004\u0018\u00010\u0004\u0012\u0010\u0008\u0002\u0010%\u001a\n\u0012\u0004\u0012\u00020$\u0018\u00010#\u0012\u0010\u0008\u0002\u0010&\u001a\n\u0012\u0004\u0012\u00020$\u0018\u00010#\u0012\u0008\u0010\'\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0010(\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0010)\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0010+\u001a\u0004\u0018\u00010*\u0012\u0008\u0010-\u001a\u0004\u0018\u00010,\u0012\u0008\u0010.\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0010/\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u00100\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u00101\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u00102\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u00104\u001a\u0004\u0018\u000103\u0012\u0008\u00105\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u00106\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u00107\u001a\u0004\u0018\u00010\u0008\u0012\u0008\u00108\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u00109\u001a\u0004\u0018\u000103\u0012\u0008\u0010;\u001a\u0004\u0018\u00010:\u0012\n\u0008\u0002\u0010=\u001a\u0004\u0018\u00010<\u0012&\u0010@\u001a\"\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004\u0018\u00010>j\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004\u0018\u0001`?\u0012&\u0010A\u001a\"\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004\u0018\u00010>j\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004\u0018\u0001`?\u0012\u0008\u0010C\u001a\u0004\u0018\u00010B\u0012\u0008\u0010D\u001a\u0004\u0018\u00010B\u00a2\u0006\u0004\u0008E\u0010FJ\u0010\u0010G\u001a\u00020\u0004H\u00d6\u0001\u00a2\u0006\u0004\u0008G\u0010HJ\u0010\u0010I\u001a\u00020\u001dH\u00d6\u0001\u00a2\u0006\u0004\u0008I\u0010JJ\u001a\u0010L\u001a\u0002032\u0008\u0010K\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003\u00a2\u0006\u0004\u0008L\u0010MR\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008N\u0010O\u001a\u0004\u0008P\u0010QR\u001a\u0010\u0005\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008R\u0010S\u001a\u0004\u0008T\u0010HR\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008U\u0010S\u001a\u0004\u0008V\u0010HR\u001c\u0010\u0007\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008W\u0010S\u001a\u0004\u0008X\u0010HR$\u0010\t\u001a\u0004\u0018\u00010\u00088\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008Y\u0010Z\u001a\u0004\u0008[\u0010\\\"\u0004\u0008]\u0010^R$\u0010\n\u001a\u0004\u0018\u00010\u00088\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008_\u0010Z\u001a\u0004\u0008`\u0010\\\"\u0004\u0008a\u0010^R$\u0010\u000b\u001a\u0004\u0018\u00010\u00088\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008b\u0010Z\u001a\u0004\u0008c\u0010\\\"\u0004\u0008d\u0010^R$\u0010\u000c\u001a\u0004\u0018\u00010\u00088\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008e\u0010Z\u001a\u0004\u0008f\u0010\\\"\u0004\u0008g\u0010^R\u001c\u0010\r\u001a\u0004\u0018\u00010\u00088\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008h\u0010Z\u001a\u0004\u0008i\u0010\\R\u001c\u0010\u000e\u001a\u0004\u0018\u00010\u00088\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008j\u0010Z\u001a\u0004\u0008k\u0010\\R\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u00088\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008l\u0010Z\u001a\u0004\u0008m\u0010\\R\u001c\u0010\u0010\u001a\u0004\u0018\u00010\u00088\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008n\u0010Z\u001a\u0004\u0008o\u0010\\R\u001c\u0010\u0011\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008p\u0010S\u001a\u0004\u0008q\u0010HR$\u0010\u0013\u001a\u0004\u0018\u00010\u00128\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008r\u0010s\u001a\u0004\u0008t\u0010u\"\u0004\u0008v\u0010wR.\u0010\u0017\u001a\u0016\u0012\u0004\u0012\u00020\u0015\u0018\u00010\u0014j\n\u0012\u0004\u0012\u00020\u0015\u0018\u0001`\u00168\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008x\u0010y\u001a\u0004\u0008z\u0010{R$\u0010\u0018\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008|\u0010S\u001a\u0004\u0008}\u0010H\"\u0004\u0008~\u0010\u007fR\'\u0010\u0019\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0015\n\u0005\u0008\u0080\u0001\u0010S\u001a\u0005\u0008\u0081\u0001\u0010H\"\u0005\u0008\u0082\u0001\u0010\u007fR\u001e\u0010\u001a\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0005\u0008\u0083\u0001\u0010S\u001a\u0005\u0008\u0084\u0001\u0010HR\u001e\u0010\u001b\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0005\u0008\u0085\u0001\u0010S\u001a\u0005\u0008\u0086\u0001\u0010HR\u001e\u0010\u001c\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0005\u0008\u0087\u0001\u0010S\u001a\u0005\u0008\u0088\u0001\u0010HR\u001d\u0010\u001e\u001a\u00020\u001d8\u0006X\u0087\u0004\u00a2\u0006\u000f\n\u0006\u0008\u0089\u0001\u0010\u008a\u0001\u001a\u0005\u0008\u008b\u0001\u0010JR\u001e\u0010\u001f\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0005\u0008\u008c\u0001\u0010S\u001a\u0005\u0008\u008d\u0001\u0010HR\u001e\u0010 \u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0005\u0008\u008e\u0001\u0010S\u001a\u0005\u0008\u008f\u0001\u0010HR\u001e\u0010!\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0005\u0008\u0090\u0001\u0010S\u001a\u0005\u0008\u0091\u0001\u0010HR\u001e\u0010\"\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0005\u0008\u0092\u0001\u0010S\u001a\u0005\u0008\u0093\u0001\u0010HR&\u0010%\u001a\n\u0012\u0004\u0012\u00020$\u0018\u00010#8\u0006X\u0087\u0004\u00a2\u0006\u0010\n\u0006\u0008\u0094\u0001\u0010\u0095\u0001\u001a\u0006\u0008\u0096\u0001\u0010\u0097\u0001R&\u0010&\u001a\n\u0012\u0004\u0012\u00020$\u0018\u00010#8\u0006X\u0087\u0004\u00a2\u0006\u0010\n\u0006\u0008\u0098\u0001\u0010\u0095\u0001\u001a\u0006\u0008\u0099\u0001\u0010\u0097\u0001R\u001e\u0010\'\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0005\u0008\u009a\u0001\u0010S\u001a\u0005\u0008\u009b\u0001\u0010HR\u001e\u0010(\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0005\u0008\u009c\u0001\u0010S\u001a\u0005\u0008\u009d\u0001\u0010HR\u001e\u0010)\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0005\u0008\u009e\u0001\u0010S\u001a\u0005\u0008\u009f\u0001\u0010HR \u0010+\u001a\u0004\u0018\u00010*8\u0006X\u0087\u0004\u00a2\u0006\u0010\n\u0006\u0008\u00a0\u0001\u0010\u00a1\u0001\u001a\u0006\u0008\u00a2\u0001\u0010\u00a3\u0001R \u0010-\u001a\u0004\u0018\u00010,8\u0006X\u0087\u0004\u00a2\u0006\u0010\n\u0006\u0008\u00a4\u0001\u0010\u00a5\u0001\u001a\u0006\u0008\u00a6\u0001\u0010\u00a7\u0001R\u001e\u0010.\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0005\u0008\u00a8\u0001\u0010S\u001a\u0005\u0008\u00a9\u0001\u0010HR\u001e\u0010/\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0005\u0008\u00aa\u0001\u0010S\u001a\u0005\u0008\u00ab\u0001\u0010HR\u001e\u00100\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0005\u0008\u008a\u0001\u0010S\u001a\u0005\u0008\u00ac\u0001\u0010HR\'\u00101\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0015\n\u0005\u0008\u00ad\u0001\u0010S\u001a\u0005\u0008\u00ae\u0001\u0010H\"\u0005\u0008\u00af\u0001\u0010\u007fR\u001e\u00102\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0005\u0008\u00b0\u0001\u0010S\u001a\u0005\u0008\u00b1\u0001\u0010HR*\u00104\u001a\u0004\u0018\u0001038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0018\n\u0006\u0008\u00b2\u0001\u0010\u00b3\u0001\u001a\u0006\u0008\u00b4\u0001\u0010\u00b5\u0001\"\u0006\u0008\u00b6\u0001\u0010\u00b7\u0001R\u001e\u00105\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0005\u0008\u00b8\u0001\u0010S\u001a\u0005\u0008\u00b9\u0001\u0010HR\'\u00106\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0015\n\u0005\u0008\u00ba\u0001\u0010S\u001a\u0005\u0008\u00bb\u0001\u0010H\"\u0005\u0008\u00bc\u0001\u0010\u007fR\'\u00107\u001a\u0004\u0018\u00010\u00088\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0015\n\u0005\u0008\u00bd\u0001\u0010Z\u001a\u0005\u0008\u00be\u0001\u0010\\\"\u0005\u0008\u00bf\u0001\u0010^R\'\u00108\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0015\n\u0005\u0008\u00c0\u0001\u0010S\u001a\u0005\u0008\u00c1\u0001\u0010H\"\u0005\u0008\u00c2\u0001\u0010\u007fR)\u00109\u001a\u0004\u0018\u0001038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0017\n\u0006\u0008\u00c3\u0001\u0010\u00b3\u0001\u001a\u0005\u00089\u0010\u00b5\u0001\"\u0006\u0008\u00c4\u0001\u0010\u00b7\u0001R*\u0010;\u001a\u0004\u0018\u00010:8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0018\n\u0006\u0008\u00c5\u0001\u0010\u00c6\u0001\u001a\u0006\u0008\u00c7\u0001\u0010\u00c8\u0001\"\u0006\u0008\u00c9\u0001\u0010\u00ca\u0001R*\u0010=\u001a\u0004\u0018\u00010<8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0018\n\u0006\u0008\u00cb\u0001\u0010\u00cc\u0001\u001a\u0006\u0008\u00cd\u0001\u0010\u00ce\u0001\"\u0006\u0008\u00cf\u0001\u0010\u00d0\u0001R>\u0010@\u001a\"\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004\u0018\u00010>j\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004\u0018\u0001`?8\u0006X\u0087\u0004\u00a2\u0006\u0010\n\u0006\u0008\u00d1\u0001\u0010\u00d2\u0001\u001a\u0006\u0008\u00d3\u0001\u0010\u00d4\u0001R>\u0010A\u001a\"\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004\u0018\u00010>j\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004\u0018\u0001`?8\u0006X\u0087\u0004\u00a2\u0006\u0010\n\u0006\u0008\u00d5\u0001\u0010\u00d2\u0001\u001a\u0006\u0008\u00d6\u0001\u0010\u00d4\u0001R \u0010C\u001a\u0004\u0018\u00010B8\u0006X\u0087\u0004\u00a2\u0006\u0010\n\u0006\u0008\u00d7\u0001\u0010\u00d8\u0001\u001a\u0006\u0008\u00d9\u0001\u0010\u00da\u0001R*\u0010D\u001a\u0004\u0018\u00010B8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0018\n\u0006\u0008\u00db\u0001\u0010\u00d8\u0001\u001a\u0006\u0008\u00dc\u0001\u0010\u00da\u0001\"\u0006\u0008\u00dd\u0001\u0010\u00de\u0001\u00a8\u0006\u00df\u0001"
    }
    d2 = {
        "Lteam/opay/pay/cashier/Instrument;",
        "",
        "Lteam/opay/pay/cashier/PayChannel;",
        "payChannel",
        "",
        "title",
        "displayName",
        "voucherId",
        "Lteam/opay/core/api/GraphQL$CurrencyAmount;",
        "amount",
        "actualAmount",
        "feeAmount",
        "fakeFeeAmount",
        "discountAmount",
        "cashback",
        "voucherAmount",
        "scaleAmount",
        "displayText",
        "Lteam/opay/pay/cashier/InstrumentStatus;",
        "status",
        "Ljava/util/ArrayList;",
        "Lteam/opay/pay/cashier/Card;",
        "Lkotlin/collections/ArrayList;",
        "cardList",
        "activityId",
        "snapshot",
        "displayBottom",
        "voucherCount",
        "iconUrl",
        "",
        "order",
        "recipientInfo",
        "voucherDesc",
        "promptInformation",
        "randomText",
        "",
        "Lteam/opay/pay/cashier/AmountView;",
        "amountViews",
        "amountViewsV2",
        "combinePayChannel",
        "combineDesc",
        "cashBackText",
        "Lteam/opay/pay/cashier/CashBackCombineInfo;",
        "cashBackCombineInfo",
        "Lteam/opay/pay/cashier/CashierGuide;",
        "cashierGuide",
        "activityCashbackDesc",
        "logo",
        "recommendedLabel",
        "promotionalCopy",
        "paymentCopy",
        "",
        "hasChoose",
        "feeRefund",
        "payChannelVoucherId",
        "payChannelVoucherAmount",
        "payChannelVoucherDesc",
        "isSupportOverdraft",
        "Lteam/opay/pay/cashier/OverDraftInfo;",
        "overDraftInfo",
        "Lteam/opay/pay/cashier/OwealthAutoSavingInfo;",
        "owealthAutoSavingInfo",
        "Ljava/util/LinkedHashMap;",
        "Lkotlin/collections/LinkedHashMap;",
        "cashbackAuthInfo",
        "payAuthInfo",
        "",
        "timestamp",
        "localTimestamp",
        "<init>",
        "(Lteam/opay/pay/cashier/PayChannel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;Ljava/lang/String;Lteam/opay/pay/cashier/InstrumentStatus;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lteam/opay/pay/cashier/CashBackCombineInfo;Lteam/opay/pay/cashier/CashierGuide;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Lteam/opay/core/api/GraphQL$CurrencyAmount;Ljava/lang/String;Ljava/lang/Boolean;Lteam/opay/pay/cashier/OverDraftInfo;Lteam/opay/pay/cashier/OwealthAutoSavingInfo;Ljava/util/LinkedHashMap;Ljava/util/LinkedHashMap;Ljava/lang/Long;Ljava/lang/Long;)V",
        "toString",
        "()Ljava/lang/String;",
        "hashCode",
        "()I",
        "other",
        "equals",
        "(Ljava/lang/Object;)Z",
        "a",
        "Lteam/opay/pay/cashier/PayChannel;",
        "getPayChannel",
        "()Lteam/opay/pay/cashier/PayChannel;",
        "b",
        "Ljava/lang/String;",
        "getTitle",
        "c",
        "getDisplayName",
        "d",
        "getVoucherId",
        "e",
        "Lteam/opay/core/api/GraphQL$CurrencyAmount;",
        "getAmount",
        "()Lteam/opay/core/api/GraphQL$CurrencyAmount;",
        "setAmount",
        "(Lteam/opay/core/api/GraphQL$CurrencyAmount;)V",
        "f",
        "getActualAmount",
        "setActualAmount",
        "g",
        "getFeeAmount",
        "setFeeAmount",
        "h",
        "getFakeFeeAmount",
        "setFakeFeeAmount",
        "i",
        "getDiscountAmount",
        "j",
        "getCashback",
        "k",
        "getVoucherAmount",
        "l",
        "getScaleAmount",
        "m",
        "getDisplayText",
        "n",
        "Lteam/opay/pay/cashier/InstrumentStatus;",
        "getStatus",
        "()Lteam/opay/pay/cashier/InstrumentStatus;",
        "setStatus",
        "(Lteam/opay/pay/cashier/InstrumentStatus;)V",
        "o",
        "Ljava/util/ArrayList;",
        "getCardList",
        "()Ljava/util/ArrayList;",
        "p",
        "getActivityId",
        "setActivityId",
        "(Ljava/lang/String;)V",
        "q",
        "getSnapshot",
        "setSnapshot",
        "r",
        "getDisplayBottom",
        "s",
        "getVoucherCount",
        "t",
        "getIconUrl",
        "u",
        "I",
        "getOrder",
        "v",
        "getRecipientInfo",
        "w",
        "getVoucherDesc",
        "x",
        "getPromptInformation",
        "y",
        "getRandomText",
        "z",
        "Ljava/util/List;",
        "getAmountViews",
        "()Ljava/util/List;",
        "A",
        "getAmountViewsV2",
        "B",
        "getCombinePayChannel",
        "C",
        "getCombineDesc",
        "D",
        "getCashBackText",
        "E",
        "Lteam/opay/pay/cashier/CashBackCombineInfo;",
        "getCashBackCombineInfo",
        "()Lteam/opay/pay/cashier/CashBackCombineInfo;",
        "F",
        "Lteam/opay/pay/cashier/CashierGuide;",
        "getCashierGuide",
        "()Lteam/opay/pay/cashier/CashierGuide;",
        "G",
        "getActivityCashbackDesc",
        "H",
        "getLogo",
        "getRecommendedLabel",
        "J",
        "getPromotionalCopy",
        "setPromotionalCopy",
        "K",
        "getPaymentCopy",
        "L",
        "Ljava/lang/Boolean;",
        "getHasChoose",
        "()Ljava/lang/Boolean;",
        "setHasChoose",
        "(Ljava/lang/Boolean;)V",
        "M",
        "getFeeRefund",
        "N",
        "getPayChannelVoucherId",
        "setPayChannelVoucherId",
        "O",
        "getPayChannelVoucherAmount",
        "setPayChannelVoucherAmount",
        "P",
        "getPayChannelVoucherDesc",
        "setPayChannelVoucherDesc",
        "Q",
        "setSupportOverdraft",
        "R",
        "Lteam/opay/pay/cashier/OverDraftInfo;",
        "getOverDraftInfo",
        "()Lteam/opay/pay/cashier/OverDraftInfo;",
        "setOverDraftInfo",
        "(Lteam/opay/pay/cashier/OverDraftInfo;)V",
        "S",
        "Lteam/opay/pay/cashier/OwealthAutoSavingInfo;",
        "getOwealthAutoSavingInfo",
        "()Lteam/opay/pay/cashier/OwealthAutoSavingInfo;",
        "setOwealthAutoSavingInfo",
        "(Lteam/opay/pay/cashier/OwealthAutoSavingInfo;)V",
        "T",
        "Ljava/util/LinkedHashMap;",
        "getCashbackAuthInfo",
        "()Ljava/util/LinkedHashMap;",
        "U",
        "getPayAuthInfo",
        "V",
        "Ljava/lang/Long;",
        "getTimestamp",
        "()Ljava/lang/Long;",
        "W",
        "getLocalTimestamp",
        "setLocalTimestamp",
        "(Ljava/lang/Long;)V",
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


# instance fields
.field private final A:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "amountViewsV2"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lteam/opay/pay/cashier/AmountView;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final B:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "combinePayChannel"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final C:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "combineDesc"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final D:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "cashBackText"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final E:Lteam/opay/pay/cashier/CashBackCombineInfo;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "cashbackCombineInfoGrayscale"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final F:Lteam/opay/pay/cashier/CashierGuide;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "cashierGuide"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final G:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "activityCashbackDesc"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final H:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "logo"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final I:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "recommendedLabel"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private J:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "promotionalCopy"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final K:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "paymentCopy"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private L:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "hasChoose"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final M:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "feeRefund"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private N:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "payChannelVoucherId"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private O:Lteam/opay/core/api/GraphQL$CurrencyAmount;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "payChannelVoucherAmount"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private P:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "payChannelVoucherDesc"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private Q:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "isSupportOverdraft"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private R:Lteam/opay/pay/cashier/OverDraftInfo;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "overDraftInfo"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private S:Lteam/opay/pay/cashier/OwealthAutoSavingInfo;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "owealthAutoSavingInfo"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final T:Ljava/util/LinkedHashMap;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "cashbackAuthInfo"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final U:Ljava/util/LinkedHashMap;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "payAuthInfo"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final V:Ljava/lang/Long;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "timestamp"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private W:Ljava/lang/Long;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "localTimestamp"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final a:Lteam/opay/pay/cashier/PayChannel;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "payChannel"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final b:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "title"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final c:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "displayName"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final d:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "voucherId"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private e:Lteam/opay/core/api/GraphQL$CurrencyAmount;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "amount"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private f:Lteam/opay/core/api/GraphQL$CurrencyAmount;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "actualAmount"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private g:Lteam/opay/core/api/GraphQL$CurrencyAmount;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "feeAmount"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private h:Lteam/opay/core/api/GraphQL$CurrencyAmount;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "fakeFeeAmount"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final i:Lteam/opay/core/api/GraphQL$CurrencyAmount;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "discountAmount"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final j:Lteam/opay/core/api/GraphQL$CurrencyAmount;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "cashback"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final k:Lteam/opay/core/api/GraphQL$CurrencyAmount;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "voucherAmount"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final l:Lteam/opay/core/api/GraphQL$CurrencyAmount;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "scaleAmount"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final m:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "displayText"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private n:Lteam/opay/pay/cashier/InstrumentStatus;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "status"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final o:Ljava/util/ArrayList;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "cardList"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lteam/opay/pay/cashier/Card;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private p:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "activityId"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private q:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "snapshot"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final r:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "displayBottom"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final s:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "avaibleVoucherCounts"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final t:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "iconUrl"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final u:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "order"
    .end annotation
.end field

.field private final v:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "recipientInfo"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final w:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "voucherDesc"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final x:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "promptInformation"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final y:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "randomText"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final z:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "amountViews"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lteam/opay/pay/cashier/AmountView;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lteam/opay/pay/cashier/PayChannel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;Ljava/lang/String;Lteam/opay/pay/cashier/InstrumentStatus;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lteam/opay/pay/cashier/CashBackCombineInfo;Lteam/opay/pay/cashier/CashierGuide;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Lteam/opay/core/api/GraphQL$CurrencyAmount;Ljava/lang/String;Ljava/lang/Boolean;Lteam/opay/pay/cashier/OverDraftInfo;Lteam/opay/pay/cashier/OwealthAutoSavingInfo;Ljava/util/LinkedHashMap;Ljava/util/LinkedHashMap;Ljava/lang/Long;Ljava/lang/Long;)V
    .locals 3
    .param p1    # Lteam/opay/pay/cashier/PayChannel;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Lteam/opay/core/api/GraphQL$CurrencyAmount;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Lteam/opay/core/api/GraphQL$CurrencyAmount;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Lteam/opay/core/api/GraphQL$CurrencyAmount;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p8    # Lteam/opay/core/api/GraphQL$CurrencyAmount;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p9    # Lteam/opay/core/api/GraphQL$CurrencyAmount;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p10    # Lteam/opay/core/api/GraphQL$CurrencyAmount;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p11    # Lteam/opay/core/api/GraphQL$CurrencyAmount;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p12    # Lteam/opay/core/api/GraphQL$CurrencyAmount;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p13    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p14    # Lteam/opay/pay/cashier/InstrumentStatus;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p15    # Ljava/util/ArrayList;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p16    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p17    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p18    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p19    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p20    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p22    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p23    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p24    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p25    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p26    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p27    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p28    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p29    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p30    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p31    # Lteam/opay/pay/cashier/CashBackCombineInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p32    # Lteam/opay/pay/cashier/CashierGuide;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p33    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p34    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p35    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p36    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p37    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p38    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p39    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p40    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p41    # Lteam/opay/core/api/GraphQL$CurrencyAmount;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p42    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p43    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p44    # Lteam/opay/pay/cashier/OverDraftInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p45    # Lteam/opay/pay/cashier/OwealthAutoSavingInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p46    # Ljava/util/LinkedHashMap;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p47    # Ljava/util/LinkedHashMap;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p48    # Ljava/lang/Long;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p49    # Ljava/lang/Long;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/pay/cashier/PayChannel;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lteam/opay/core/api/GraphQL$CurrencyAmount;",
            "Lteam/opay/core/api/GraphQL$CurrencyAmount;",
            "Lteam/opay/core/api/GraphQL$CurrencyAmount;",
            "Lteam/opay/core/api/GraphQL$CurrencyAmount;",
            "Lteam/opay/core/api/GraphQL$CurrencyAmount;",
            "Lteam/opay/core/api/GraphQL$CurrencyAmount;",
            "Lteam/opay/core/api/GraphQL$CurrencyAmount;",
            "Lteam/opay/core/api/GraphQL$CurrencyAmount;",
            "Ljava/lang/String;",
            "Lteam/opay/pay/cashier/InstrumentStatus;",
            "Ljava/util/ArrayList<",
            "Lteam/opay/pay/cashier/Card;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lteam/opay/pay/cashier/AmountView;",
            ">;",
            "Ljava/util/List<",
            "Lteam/opay/pay/cashier/AmountView;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lteam/opay/pay/cashier/CashBackCombineInfo;",
            "Lteam/opay/pay/cashier/CashierGuide;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lteam/opay/core/api/GraphQL$CurrencyAmount;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Lteam/opay/pay/cashier/OverDraftInfo;",
            "Lteam/opay/pay/cashier/OwealthAutoSavingInfo;",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p2

    const-string v2, "title"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v2, p1

    .line 2
    iput-object v2, v0, Lteam/opay/pay/cashier/Instrument;->a:Lteam/opay/pay/cashier/PayChannel;

    .line 3
    iput-object v1, v0, Lteam/opay/pay/cashier/Instrument;->b:Ljava/lang/String;

    move-object v1, p3

    .line 4
    iput-object v1, v0, Lteam/opay/pay/cashier/Instrument;->c:Ljava/lang/String;

    move-object v1, p4

    .line 5
    iput-object v1, v0, Lteam/opay/pay/cashier/Instrument;->d:Ljava/lang/String;

    move-object v1, p5

    .line 6
    iput-object v1, v0, Lteam/opay/pay/cashier/Instrument;->e:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    move-object v1, p6

    .line 7
    iput-object v1, v0, Lteam/opay/pay/cashier/Instrument;->f:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    move-object v1, p7

    .line 8
    iput-object v1, v0, Lteam/opay/pay/cashier/Instrument;->g:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    move-object v1, p8

    .line 9
    iput-object v1, v0, Lteam/opay/pay/cashier/Instrument;->h:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    move-object v1, p9

    .line 10
    iput-object v1, v0, Lteam/opay/pay/cashier/Instrument;->i:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    move-object v1, p10

    .line 11
    iput-object v1, v0, Lteam/opay/pay/cashier/Instrument;->j:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    move-object v1, p11

    .line 12
    iput-object v1, v0, Lteam/opay/pay/cashier/Instrument;->k:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    move-object v1, p12

    .line 13
    iput-object v1, v0, Lteam/opay/pay/cashier/Instrument;->l:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    move-object/from16 v1, p13

    .line 14
    iput-object v1, v0, Lteam/opay/pay/cashier/Instrument;->m:Ljava/lang/String;

    move-object/from16 v1, p14

    .line 15
    iput-object v1, v0, Lteam/opay/pay/cashier/Instrument;->n:Lteam/opay/pay/cashier/InstrumentStatus;

    move-object/from16 v1, p15

    .line 16
    iput-object v1, v0, Lteam/opay/pay/cashier/Instrument;->o:Ljava/util/ArrayList;

    move-object/from16 v1, p16

    .line 17
    iput-object v1, v0, Lteam/opay/pay/cashier/Instrument;->p:Ljava/lang/String;

    move-object/from16 v1, p17

    .line 18
    iput-object v1, v0, Lteam/opay/pay/cashier/Instrument;->q:Ljava/lang/String;

    move-object/from16 v1, p18

    .line 19
    iput-object v1, v0, Lteam/opay/pay/cashier/Instrument;->r:Ljava/lang/String;

    move-object/from16 v1, p19

    .line 20
    iput-object v1, v0, Lteam/opay/pay/cashier/Instrument;->s:Ljava/lang/String;

    move-object/from16 v1, p20

    .line 21
    iput-object v1, v0, Lteam/opay/pay/cashier/Instrument;->t:Ljava/lang/String;

    move/from16 v1, p21

    .line 22
    iput v1, v0, Lteam/opay/pay/cashier/Instrument;->u:I

    move-object/from16 v1, p22

    .line 23
    iput-object v1, v0, Lteam/opay/pay/cashier/Instrument;->v:Ljava/lang/String;

    move-object/from16 v1, p23

    .line 24
    iput-object v1, v0, Lteam/opay/pay/cashier/Instrument;->w:Ljava/lang/String;

    move-object/from16 v1, p24

    .line 25
    iput-object v1, v0, Lteam/opay/pay/cashier/Instrument;->x:Ljava/lang/String;

    move-object/from16 v1, p25

    .line 26
    iput-object v1, v0, Lteam/opay/pay/cashier/Instrument;->y:Ljava/lang/String;

    move-object/from16 v1, p26

    .line 27
    iput-object v1, v0, Lteam/opay/pay/cashier/Instrument;->z:Ljava/util/List;

    move-object/from16 v1, p27

    .line 28
    iput-object v1, v0, Lteam/opay/pay/cashier/Instrument;->A:Ljava/util/List;

    move-object/from16 v1, p28

    .line 29
    iput-object v1, v0, Lteam/opay/pay/cashier/Instrument;->B:Ljava/lang/String;

    move-object/from16 v1, p29

    .line 30
    iput-object v1, v0, Lteam/opay/pay/cashier/Instrument;->C:Ljava/lang/String;

    move-object/from16 v1, p30

    .line 31
    iput-object v1, v0, Lteam/opay/pay/cashier/Instrument;->D:Ljava/lang/String;

    move-object/from16 v1, p31

    .line 32
    iput-object v1, v0, Lteam/opay/pay/cashier/Instrument;->E:Lteam/opay/pay/cashier/CashBackCombineInfo;

    move-object/from16 v1, p32

    .line 33
    iput-object v1, v0, Lteam/opay/pay/cashier/Instrument;->F:Lteam/opay/pay/cashier/CashierGuide;

    move-object/from16 v1, p33

    .line 34
    iput-object v1, v0, Lteam/opay/pay/cashier/Instrument;->G:Ljava/lang/String;

    move-object/from16 v1, p34

    .line 35
    iput-object v1, v0, Lteam/opay/pay/cashier/Instrument;->H:Ljava/lang/String;

    move-object/from16 v1, p35

    .line 36
    iput-object v1, v0, Lteam/opay/pay/cashier/Instrument;->I:Ljava/lang/String;

    move-object/from16 v1, p36

    .line 37
    iput-object v1, v0, Lteam/opay/pay/cashier/Instrument;->J:Ljava/lang/String;

    move-object/from16 v1, p37

    .line 38
    iput-object v1, v0, Lteam/opay/pay/cashier/Instrument;->K:Ljava/lang/String;

    move-object/from16 v1, p38

    .line 39
    iput-object v1, v0, Lteam/opay/pay/cashier/Instrument;->L:Ljava/lang/Boolean;

    move-object/from16 v1, p39

    .line 40
    iput-object v1, v0, Lteam/opay/pay/cashier/Instrument;->M:Ljava/lang/String;

    move-object/from16 v1, p40

    .line 41
    iput-object v1, v0, Lteam/opay/pay/cashier/Instrument;->N:Ljava/lang/String;

    move-object/from16 v1, p41

    .line 42
    iput-object v1, v0, Lteam/opay/pay/cashier/Instrument;->O:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    move-object/from16 v1, p42

    .line 43
    iput-object v1, v0, Lteam/opay/pay/cashier/Instrument;->P:Ljava/lang/String;

    move-object/from16 v1, p43

    .line 44
    iput-object v1, v0, Lteam/opay/pay/cashier/Instrument;->Q:Ljava/lang/Boolean;

    move-object/from16 v1, p44

    .line 45
    iput-object v1, v0, Lteam/opay/pay/cashier/Instrument;->R:Lteam/opay/pay/cashier/OverDraftInfo;

    move-object/from16 v1, p45

    .line 46
    iput-object v1, v0, Lteam/opay/pay/cashier/Instrument;->S:Lteam/opay/pay/cashier/OwealthAutoSavingInfo;

    move-object/from16 v1, p46

    .line 47
    iput-object v1, v0, Lteam/opay/pay/cashier/Instrument;->T:Ljava/util/LinkedHashMap;

    move-object/from16 v1, p47

    .line 48
    iput-object v1, v0, Lteam/opay/pay/cashier/Instrument;->U:Ljava/util/LinkedHashMap;

    move-object/from16 v1, p48

    .line 49
    iput-object v1, v0, Lteam/opay/pay/cashier/Instrument;->V:Ljava/lang/Long;

    move-object/from16 v1, p49

    .line 50
    iput-object v1, v0, Lteam/opay/pay/cashier/Instrument;->W:Ljava/lang/Long;

    return-void
.end method

.method public synthetic constructor <init>(Lteam/opay/pay/cashier/PayChannel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;Ljava/lang/String;Lteam/opay/pay/cashier/InstrumentStatus;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lteam/opay/pay/cashier/CashBackCombineInfo;Lteam/opay/pay/cashier/CashierGuide;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Lteam/opay/core/api/GraphQL$CurrencyAmount;Ljava/lang/String;Ljava/lang/Boolean;Lteam/opay/pay/cashier/OverDraftInfo;Lteam/opay/pay/cashier/OwealthAutoSavingInfo;Ljava/util/LinkedHashMap;Ljava/util/LinkedHashMap;Ljava/lang/Long;Ljava/lang/Long;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 51

    and-int/lit8 v0, p50, 0x2

    if-eqz v0, :cond_0

    .line 51
    const-string v0, ""

    move-object v3, v0

    goto :goto_0

    :cond_0
    move-object/from16 v3, p2

    :goto_0
    const/high16 v0, 0x100000

    and-int v0, p50, v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    const/16 v22, 0x0

    goto :goto_1

    :cond_1
    move/from16 v22, p21

    :goto_1
    const/high16 v0, 0x2000000

    and-int v0, p50, v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    move-object/from16 v27, v1

    goto :goto_2

    :cond_2
    move-object/from16 v27, p26

    :goto_2
    const/high16 v0, 0x4000000

    and-int v0, p50, v0

    if-eqz v0, :cond_3

    move-object/from16 v28, v1

    goto :goto_3

    :cond_3
    move-object/from16 v28, p27

    :goto_3
    move/from16 v0, p51

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_4

    move-object/from16 v46, v1

    goto :goto_4

    :cond_4
    move-object/from16 v46, p45

    :goto_4
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    move-object/from16 v17, p16

    move-object/from16 v18, p17

    move-object/from16 v19, p18

    move-object/from16 v20, p19

    move-object/from16 v21, p20

    move-object/from16 v23, p22

    move-object/from16 v24, p23

    move-object/from16 v25, p24

    move-object/from16 v26, p25

    move-object/from16 v29, p28

    move-object/from16 v30, p29

    move-object/from16 v31, p30

    move-object/from16 v32, p31

    move-object/from16 v33, p32

    move-object/from16 v34, p33

    move-object/from16 v35, p34

    move-object/from16 v36, p35

    move-object/from16 v37, p36

    move-object/from16 v38, p37

    move-object/from16 v39, p38

    move-object/from16 v40, p39

    move-object/from16 v41, p40

    move-object/from16 v42, p41

    move-object/from16 v43, p42

    move-object/from16 v44, p43

    move-object/from16 v45, p44

    move-object/from16 v47, p46

    move-object/from16 v48, p47

    move-object/from16 v49, p48

    move-object/from16 v50, p49

    .line 52
    invoke-direct/range {v1 .. v50}, Lteam/opay/pay/cashier/Instrument;-><init>(Lteam/opay/pay/cashier/PayChannel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;Ljava/lang/String;Lteam/opay/pay/cashier/InstrumentStatus;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lteam/opay/pay/cashier/CashBackCombineInfo;Lteam/opay/pay/cashier/CashierGuide;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Lteam/opay/core/api/GraphQL$CurrencyAmount;Ljava/lang/String;Ljava/lang/Boolean;Lteam/opay/pay/cashier/OverDraftInfo;Lteam/opay/pay/cashier/OwealthAutoSavingInfo;Ljava/util/LinkedHashMap;Ljava/util/LinkedHashMap;Ljava/lang/Long;Ljava/lang/Long;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lteam/opay/pay/cashier/Instrument;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Lteam/opay/pay/cashier/Instrument;

    .line 12
    .line 13
    iget-object v1, p0, Lteam/opay/pay/cashier/Instrument;->a:Lteam/opay/pay/cashier/PayChannel;

    .line 14
    .line 15
    iget-object v3, p1, Lteam/opay/pay/cashier/Instrument;->a:Lteam/opay/pay/cashier/PayChannel;

    .line 16
    .line 17
    if-eq v1, v3, :cond_2

    .line 18
    .line 19
    return v2

    .line 20
    :cond_2
    iget-object v1, p0, Lteam/opay/pay/cashier/Instrument;->b:Ljava/lang/String;

    .line 21
    .line 22
    iget-object v3, p1, Lteam/opay/pay/cashier/Instrument;->b:Ljava/lang/String;

    .line 23
    .line 24
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-nez v1, :cond_3

    .line 29
    .line 30
    return v2

    .line 31
    :cond_3
    iget-object v1, p0, Lteam/opay/pay/cashier/Instrument;->c:Ljava/lang/String;

    .line 32
    .line 33
    iget-object v3, p1, Lteam/opay/pay/cashier/Instrument;->c:Ljava/lang/String;

    .line 34
    .line 35
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-nez v1, :cond_4

    .line 40
    .line 41
    return v2

    .line 42
    :cond_4
    iget-object v1, p0, Lteam/opay/pay/cashier/Instrument;->d:Ljava/lang/String;

    .line 43
    .line 44
    iget-object v3, p1, Lteam/opay/pay/cashier/Instrument;->d:Ljava/lang/String;

    .line 45
    .line 46
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    if-nez v1, :cond_5

    .line 51
    .line 52
    return v2

    .line 53
    :cond_5
    iget-object v1, p0, Lteam/opay/pay/cashier/Instrument;->e:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 54
    .line 55
    iget-object v3, p1, Lteam/opay/pay/cashier/Instrument;->e:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 56
    .line 57
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-nez v1, :cond_6

    .line 62
    .line 63
    return v2

    .line 64
    :cond_6
    iget-object v1, p0, Lteam/opay/pay/cashier/Instrument;->f:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 65
    .line 66
    iget-object v3, p1, Lteam/opay/pay/cashier/Instrument;->f:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 67
    .line 68
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    if-nez v1, :cond_7

    .line 73
    .line 74
    return v2

    .line 75
    :cond_7
    iget-object v1, p0, Lteam/opay/pay/cashier/Instrument;->g:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 76
    .line 77
    iget-object v3, p1, Lteam/opay/pay/cashier/Instrument;->g:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 78
    .line 79
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    if-nez v1, :cond_8

    .line 84
    .line 85
    return v2

    .line 86
    :cond_8
    iget-object v1, p0, Lteam/opay/pay/cashier/Instrument;->h:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 87
    .line 88
    iget-object v3, p1, Lteam/opay/pay/cashier/Instrument;->h:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 89
    .line 90
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    if-nez v1, :cond_9

    .line 95
    .line 96
    return v2

    .line 97
    :cond_9
    iget-object v1, p0, Lteam/opay/pay/cashier/Instrument;->i:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 98
    .line 99
    iget-object v3, p1, Lteam/opay/pay/cashier/Instrument;->i:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 100
    .line 101
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    move-result v1

    .line 105
    if-nez v1, :cond_a

    .line 106
    .line 107
    return v2

    .line 108
    :cond_a
    iget-object v1, p0, Lteam/opay/pay/cashier/Instrument;->j:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 109
    .line 110
    iget-object v3, p1, Lteam/opay/pay/cashier/Instrument;->j:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 111
    .line 112
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    move-result v1

    .line 116
    if-nez v1, :cond_b

    .line 117
    .line 118
    return v2

    .line 119
    :cond_b
    iget-object v1, p0, Lteam/opay/pay/cashier/Instrument;->k:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 120
    .line 121
    iget-object v3, p1, Lteam/opay/pay/cashier/Instrument;->k:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 122
    .line 123
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    move-result v1

    .line 127
    if-nez v1, :cond_c

    .line 128
    .line 129
    return v2

    .line 130
    :cond_c
    iget-object v1, p0, Lteam/opay/pay/cashier/Instrument;->l:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 131
    .line 132
    iget-object v3, p1, Lteam/opay/pay/cashier/Instrument;->l:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 133
    .line 134
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 135
    .line 136
    .line 137
    move-result v1

    .line 138
    if-nez v1, :cond_d

    .line 139
    .line 140
    return v2

    .line 141
    :cond_d
    iget-object v1, p0, Lteam/opay/pay/cashier/Instrument;->m:Ljava/lang/String;

    .line 142
    .line 143
    iget-object v3, p1, Lteam/opay/pay/cashier/Instrument;->m:Ljava/lang/String;

    .line 144
    .line 145
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    move-result v1

    .line 149
    if-nez v1, :cond_e

    .line 150
    .line 151
    return v2

    .line 152
    :cond_e
    iget-object v1, p0, Lteam/opay/pay/cashier/Instrument;->n:Lteam/opay/pay/cashier/InstrumentStatus;

    .line 153
    .line 154
    iget-object v3, p1, Lteam/opay/pay/cashier/Instrument;->n:Lteam/opay/pay/cashier/InstrumentStatus;

    .line 155
    .line 156
    if-eq v1, v3, :cond_f

    .line 157
    .line 158
    return v2

    .line 159
    :cond_f
    iget-object v1, p0, Lteam/opay/pay/cashier/Instrument;->o:Ljava/util/ArrayList;

    .line 160
    .line 161
    iget-object v3, p1, Lteam/opay/pay/cashier/Instrument;->o:Ljava/util/ArrayList;

    .line 162
    .line 163
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 164
    .line 165
    .line 166
    move-result v1

    .line 167
    if-nez v1, :cond_10

    .line 168
    .line 169
    return v2

    .line 170
    :cond_10
    iget-object v1, p0, Lteam/opay/pay/cashier/Instrument;->p:Ljava/lang/String;

    .line 171
    .line 172
    iget-object v3, p1, Lteam/opay/pay/cashier/Instrument;->p:Ljava/lang/String;

    .line 173
    .line 174
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 175
    .line 176
    .line 177
    move-result v1

    .line 178
    if-nez v1, :cond_11

    .line 179
    .line 180
    return v2

    .line 181
    :cond_11
    iget-object v1, p0, Lteam/opay/pay/cashier/Instrument;->q:Ljava/lang/String;

    .line 182
    .line 183
    iget-object v3, p1, Lteam/opay/pay/cashier/Instrument;->q:Ljava/lang/String;

    .line 184
    .line 185
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 186
    .line 187
    .line 188
    move-result v1

    .line 189
    if-nez v1, :cond_12

    .line 190
    .line 191
    return v2

    .line 192
    :cond_12
    iget-object v1, p0, Lteam/opay/pay/cashier/Instrument;->r:Ljava/lang/String;

    .line 193
    .line 194
    iget-object v3, p1, Lteam/opay/pay/cashier/Instrument;->r:Ljava/lang/String;

    .line 195
    .line 196
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 197
    .line 198
    .line 199
    move-result v1

    .line 200
    if-nez v1, :cond_13

    .line 201
    .line 202
    return v2

    .line 203
    :cond_13
    iget-object v1, p0, Lteam/opay/pay/cashier/Instrument;->s:Ljava/lang/String;

    .line 204
    .line 205
    iget-object v3, p1, Lteam/opay/pay/cashier/Instrument;->s:Ljava/lang/String;

    .line 206
    .line 207
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 208
    .line 209
    .line 210
    move-result v1

    .line 211
    if-nez v1, :cond_14

    .line 212
    .line 213
    return v2

    .line 214
    :cond_14
    iget-object v1, p0, Lteam/opay/pay/cashier/Instrument;->t:Ljava/lang/String;

    .line 215
    .line 216
    iget-object v3, p1, Lteam/opay/pay/cashier/Instrument;->t:Ljava/lang/String;

    .line 217
    .line 218
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 219
    .line 220
    .line 221
    move-result v1

    .line 222
    if-nez v1, :cond_15

    .line 223
    .line 224
    return v2

    .line 225
    :cond_15
    iget v1, p0, Lteam/opay/pay/cashier/Instrument;->u:I

    .line 226
    .line 227
    iget v3, p1, Lteam/opay/pay/cashier/Instrument;->u:I

    .line 228
    .line 229
    if-eq v1, v3, :cond_16

    .line 230
    .line 231
    return v2

    .line 232
    :cond_16
    iget-object v1, p0, Lteam/opay/pay/cashier/Instrument;->v:Ljava/lang/String;

    .line 233
    .line 234
    iget-object v3, p1, Lteam/opay/pay/cashier/Instrument;->v:Ljava/lang/String;

    .line 235
    .line 236
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 237
    .line 238
    .line 239
    move-result v1

    .line 240
    if-nez v1, :cond_17

    .line 241
    .line 242
    return v2

    .line 243
    :cond_17
    iget-object v1, p0, Lteam/opay/pay/cashier/Instrument;->w:Ljava/lang/String;

    .line 244
    .line 245
    iget-object v3, p1, Lteam/opay/pay/cashier/Instrument;->w:Ljava/lang/String;

    .line 246
    .line 247
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 248
    .line 249
    .line 250
    move-result v1

    .line 251
    if-nez v1, :cond_18

    .line 252
    .line 253
    return v2

    .line 254
    :cond_18
    iget-object v1, p0, Lteam/opay/pay/cashier/Instrument;->x:Ljava/lang/String;

    .line 255
    .line 256
    iget-object v3, p1, Lteam/opay/pay/cashier/Instrument;->x:Ljava/lang/String;

    .line 257
    .line 258
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 259
    .line 260
    .line 261
    move-result v1

    .line 262
    if-nez v1, :cond_19

    .line 263
    .line 264
    return v2

    .line 265
    :cond_19
    iget-object v1, p0, Lteam/opay/pay/cashier/Instrument;->y:Ljava/lang/String;

    .line 266
    .line 267
    iget-object v3, p1, Lteam/opay/pay/cashier/Instrument;->y:Ljava/lang/String;

    .line 268
    .line 269
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 270
    .line 271
    .line 272
    move-result v1

    .line 273
    if-nez v1, :cond_1a

    .line 274
    .line 275
    return v2

    .line 276
    :cond_1a
    iget-object v1, p0, Lteam/opay/pay/cashier/Instrument;->z:Ljava/util/List;

    .line 277
    .line 278
    iget-object v3, p1, Lteam/opay/pay/cashier/Instrument;->z:Ljava/util/List;

    .line 279
    .line 280
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 281
    .line 282
    .line 283
    move-result v1

    .line 284
    if-nez v1, :cond_1b

    .line 285
    .line 286
    return v2

    .line 287
    :cond_1b
    iget-object v1, p0, Lteam/opay/pay/cashier/Instrument;->A:Ljava/util/List;

    .line 288
    .line 289
    iget-object v3, p1, Lteam/opay/pay/cashier/Instrument;->A:Ljava/util/List;

    .line 290
    .line 291
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 292
    .line 293
    .line 294
    move-result v1

    .line 295
    if-nez v1, :cond_1c

    .line 296
    .line 297
    return v2

    .line 298
    :cond_1c
    iget-object v1, p0, Lteam/opay/pay/cashier/Instrument;->B:Ljava/lang/String;

    .line 299
    .line 300
    iget-object v3, p1, Lteam/opay/pay/cashier/Instrument;->B:Ljava/lang/String;

    .line 301
    .line 302
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 303
    .line 304
    .line 305
    move-result v1

    .line 306
    if-nez v1, :cond_1d

    .line 307
    .line 308
    return v2

    .line 309
    :cond_1d
    iget-object v1, p0, Lteam/opay/pay/cashier/Instrument;->C:Ljava/lang/String;

    .line 310
    .line 311
    iget-object v3, p1, Lteam/opay/pay/cashier/Instrument;->C:Ljava/lang/String;

    .line 312
    .line 313
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 314
    .line 315
    .line 316
    move-result v1

    .line 317
    if-nez v1, :cond_1e

    .line 318
    .line 319
    return v2

    .line 320
    :cond_1e
    iget-object v1, p0, Lteam/opay/pay/cashier/Instrument;->D:Ljava/lang/String;

    .line 321
    .line 322
    iget-object v3, p1, Lteam/opay/pay/cashier/Instrument;->D:Ljava/lang/String;

    .line 323
    .line 324
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 325
    .line 326
    .line 327
    move-result v1

    .line 328
    if-nez v1, :cond_1f

    .line 329
    .line 330
    return v2

    .line 331
    :cond_1f
    iget-object v1, p0, Lteam/opay/pay/cashier/Instrument;->E:Lteam/opay/pay/cashier/CashBackCombineInfo;

    .line 332
    .line 333
    iget-object v3, p1, Lteam/opay/pay/cashier/Instrument;->E:Lteam/opay/pay/cashier/CashBackCombineInfo;

    .line 334
    .line 335
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 336
    .line 337
    .line 338
    move-result v1

    .line 339
    if-nez v1, :cond_20

    .line 340
    .line 341
    return v2

    .line 342
    :cond_20
    iget-object v1, p0, Lteam/opay/pay/cashier/Instrument;->F:Lteam/opay/pay/cashier/CashierGuide;

    .line 343
    .line 344
    iget-object v3, p1, Lteam/opay/pay/cashier/Instrument;->F:Lteam/opay/pay/cashier/CashierGuide;

    .line 345
    .line 346
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 347
    .line 348
    .line 349
    move-result v1

    .line 350
    if-nez v1, :cond_21

    .line 351
    .line 352
    return v2

    .line 353
    :cond_21
    iget-object v1, p0, Lteam/opay/pay/cashier/Instrument;->G:Ljava/lang/String;

    .line 354
    .line 355
    iget-object v3, p1, Lteam/opay/pay/cashier/Instrument;->G:Ljava/lang/String;

    .line 356
    .line 357
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 358
    .line 359
    .line 360
    move-result v1

    .line 361
    if-nez v1, :cond_22

    .line 362
    .line 363
    return v2

    .line 364
    :cond_22
    iget-object v1, p0, Lteam/opay/pay/cashier/Instrument;->H:Ljava/lang/String;

    .line 365
    .line 366
    iget-object v3, p1, Lteam/opay/pay/cashier/Instrument;->H:Ljava/lang/String;

    .line 367
    .line 368
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 369
    .line 370
    .line 371
    move-result v1

    .line 372
    if-nez v1, :cond_23

    .line 373
    .line 374
    return v2

    .line 375
    :cond_23
    iget-object v1, p0, Lteam/opay/pay/cashier/Instrument;->I:Ljava/lang/String;

    .line 376
    .line 377
    iget-object v3, p1, Lteam/opay/pay/cashier/Instrument;->I:Ljava/lang/String;

    .line 378
    .line 379
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 380
    .line 381
    .line 382
    move-result v1

    .line 383
    if-nez v1, :cond_24

    .line 384
    .line 385
    return v2

    .line 386
    :cond_24
    iget-object v1, p0, Lteam/opay/pay/cashier/Instrument;->J:Ljava/lang/String;

    .line 387
    .line 388
    iget-object v3, p1, Lteam/opay/pay/cashier/Instrument;->J:Ljava/lang/String;

    .line 389
    .line 390
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 391
    .line 392
    .line 393
    move-result v1

    .line 394
    if-nez v1, :cond_25

    .line 395
    .line 396
    return v2

    .line 397
    :cond_25
    iget-object v1, p0, Lteam/opay/pay/cashier/Instrument;->K:Ljava/lang/String;

    .line 398
    .line 399
    iget-object v3, p1, Lteam/opay/pay/cashier/Instrument;->K:Ljava/lang/String;

    .line 400
    .line 401
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 402
    .line 403
    .line 404
    move-result v1

    .line 405
    if-nez v1, :cond_26

    .line 406
    .line 407
    return v2

    .line 408
    :cond_26
    iget-object v1, p0, Lteam/opay/pay/cashier/Instrument;->L:Ljava/lang/Boolean;

    .line 409
    .line 410
    iget-object v3, p1, Lteam/opay/pay/cashier/Instrument;->L:Ljava/lang/Boolean;

    .line 411
    .line 412
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 413
    .line 414
    .line 415
    move-result v1

    .line 416
    if-nez v1, :cond_27

    .line 417
    .line 418
    return v2

    .line 419
    :cond_27
    iget-object v1, p0, Lteam/opay/pay/cashier/Instrument;->M:Ljava/lang/String;

    .line 420
    .line 421
    iget-object v3, p1, Lteam/opay/pay/cashier/Instrument;->M:Ljava/lang/String;

    .line 422
    .line 423
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 424
    .line 425
    .line 426
    move-result v1

    .line 427
    if-nez v1, :cond_28

    .line 428
    .line 429
    return v2

    .line 430
    :cond_28
    iget-object v1, p0, Lteam/opay/pay/cashier/Instrument;->N:Ljava/lang/String;

    .line 431
    .line 432
    iget-object v3, p1, Lteam/opay/pay/cashier/Instrument;->N:Ljava/lang/String;

    .line 433
    .line 434
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 435
    .line 436
    .line 437
    move-result v1

    .line 438
    if-nez v1, :cond_29

    .line 439
    .line 440
    return v2

    .line 441
    :cond_29
    iget-object v1, p0, Lteam/opay/pay/cashier/Instrument;->O:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 442
    .line 443
    iget-object v3, p1, Lteam/opay/pay/cashier/Instrument;->O:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 444
    .line 445
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 446
    .line 447
    .line 448
    move-result v1

    .line 449
    if-nez v1, :cond_2a

    .line 450
    .line 451
    return v2

    .line 452
    :cond_2a
    iget-object v1, p0, Lteam/opay/pay/cashier/Instrument;->P:Ljava/lang/String;

    .line 453
    .line 454
    iget-object v3, p1, Lteam/opay/pay/cashier/Instrument;->P:Ljava/lang/String;

    .line 455
    .line 456
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 457
    .line 458
    .line 459
    move-result v1

    .line 460
    if-nez v1, :cond_2b

    .line 461
    .line 462
    return v2

    .line 463
    :cond_2b
    iget-object v1, p0, Lteam/opay/pay/cashier/Instrument;->Q:Ljava/lang/Boolean;

    .line 464
    .line 465
    iget-object v3, p1, Lteam/opay/pay/cashier/Instrument;->Q:Ljava/lang/Boolean;

    .line 466
    .line 467
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 468
    .line 469
    .line 470
    move-result v1

    .line 471
    if-nez v1, :cond_2c

    .line 472
    .line 473
    return v2

    .line 474
    :cond_2c
    iget-object v1, p0, Lteam/opay/pay/cashier/Instrument;->R:Lteam/opay/pay/cashier/OverDraftInfo;

    .line 475
    .line 476
    iget-object v3, p1, Lteam/opay/pay/cashier/Instrument;->R:Lteam/opay/pay/cashier/OverDraftInfo;

    .line 477
    .line 478
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 479
    .line 480
    .line 481
    move-result v1

    .line 482
    if-nez v1, :cond_2d

    .line 483
    .line 484
    return v2

    .line 485
    :cond_2d
    iget-object v1, p0, Lteam/opay/pay/cashier/Instrument;->S:Lteam/opay/pay/cashier/OwealthAutoSavingInfo;

    .line 486
    .line 487
    iget-object v3, p1, Lteam/opay/pay/cashier/Instrument;->S:Lteam/opay/pay/cashier/OwealthAutoSavingInfo;

    .line 488
    .line 489
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 490
    .line 491
    .line 492
    move-result v1

    .line 493
    if-nez v1, :cond_2e

    .line 494
    .line 495
    return v2

    .line 496
    :cond_2e
    iget-object v1, p0, Lteam/opay/pay/cashier/Instrument;->T:Ljava/util/LinkedHashMap;

    .line 497
    .line 498
    iget-object v3, p1, Lteam/opay/pay/cashier/Instrument;->T:Ljava/util/LinkedHashMap;

    .line 499
    .line 500
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 501
    .line 502
    .line 503
    move-result v1

    .line 504
    if-nez v1, :cond_2f

    .line 505
    .line 506
    return v2

    .line 507
    :cond_2f
    iget-object v1, p0, Lteam/opay/pay/cashier/Instrument;->U:Ljava/util/LinkedHashMap;

    .line 508
    .line 509
    iget-object v3, p1, Lteam/opay/pay/cashier/Instrument;->U:Ljava/util/LinkedHashMap;

    .line 510
    .line 511
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 512
    .line 513
    .line 514
    move-result v1

    .line 515
    if-nez v1, :cond_30

    .line 516
    .line 517
    return v2

    .line 518
    :cond_30
    iget-object v1, p0, Lteam/opay/pay/cashier/Instrument;->V:Ljava/lang/Long;

    .line 519
    .line 520
    iget-object v3, p1, Lteam/opay/pay/cashier/Instrument;->V:Ljava/lang/Long;

    .line 521
    .line 522
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 523
    .line 524
    .line 525
    move-result v1

    .line 526
    if-nez v1, :cond_31

    .line 527
    .line 528
    return v2

    .line 529
    :cond_31
    iget-object v1, p0, Lteam/opay/pay/cashier/Instrument;->W:Ljava/lang/Long;

    .line 530
    .line 531
    iget-object p1, p1, Lteam/opay/pay/cashier/Instrument;->W:Ljava/lang/Long;

    .line 532
    .line 533
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 534
    .line 535
    .line 536
    move-result p1

    .line 537
    if-nez p1, :cond_32

    .line 538
    .line 539
    return v2

    .line 540
    :cond_32
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lteam/opay/pay/cashier/Instrument;->a:Lteam/opay/pay/cashier/PayChannel;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lteam/opay/pay/cashier/Instrument;->b:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lteam/opay/pay/cashier/Instrument;->c:Ljava/lang/String;

    if-nez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lteam/opay/pay/cashier/Instrument;->d:Ljava/lang/String;

    if-nez v2, :cond_2

    const/4 v2, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lteam/opay/pay/cashier/Instrument;->e:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    if-nez v2, :cond_3

    const/4 v2, 0x0

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->hashCode()I

    move-result v2

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lteam/opay/pay/cashier/Instrument;->f:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    if-nez v2, :cond_4

    const/4 v2, 0x0

    goto :goto_4

    :cond_4
    invoke-virtual {v2}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->hashCode()I

    move-result v2

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lteam/opay/pay/cashier/Instrument;->g:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    if-nez v2, :cond_5

    const/4 v2, 0x0

    goto :goto_5

    :cond_5
    invoke-virtual {v2}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->hashCode()I

    move-result v2

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lteam/opay/pay/cashier/Instrument;->h:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    if-nez v2, :cond_6

    const/4 v2, 0x0

    goto :goto_6

    :cond_6
    invoke-virtual {v2}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->hashCode()I

    move-result v2

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lteam/opay/pay/cashier/Instrument;->i:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    if-nez v2, :cond_7

    const/4 v2, 0x0

    goto :goto_7

    :cond_7
    invoke-virtual {v2}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->hashCode()I

    move-result v2

    :goto_7
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lteam/opay/pay/cashier/Instrument;->j:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    if-nez v2, :cond_8

    const/4 v2, 0x0

    goto :goto_8

    :cond_8
    invoke-virtual {v2}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->hashCode()I

    move-result v2

    :goto_8
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lteam/opay/pay/cashier/Instrument;->k:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    if-nez v2, :cond_9

    const/4 v2, 0x0

    goto :goto_9

    :cond_9
    invoke-virtual {v2}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->hashCode()I

    move-result v2

    :goto_9
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lteam/opay/pay/cashier/Instrument;->l:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    if-nez v2, :cond_a

    const/4 v2, 0x0

    goto :goto_a

    :cond_a
    invoke-virtual {v2}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->hashCode()I

    move-result v2

    :goto_a
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lteam/opay/pay/cashier/Instrument;->m:Ljava/lang/String;

    if-nez v2, :cond_b

    const/4 v2, 0x0

    goto :goto_b

    :cond_b
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_b
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lteam/opay/pay/cashier/Instrument;->n:Lteam/opay/pay/cashier/InstrumentStatus;

    if-nez v2, :cond_c

    const/4 v2, 0x0

    goto :goto_c

    :cond_c
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_c
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lteam/opay/pay/cashier/Instrument;->o:Ljava/util/ArrayList;

    if-nez v2, :cond_d

    const/4 v2, 0x0

    goto :goto_d

    :cond_d
    invoke-virtual {v2}, Ljava/util/ArrayList;->hashCode()I

    move-result v2

    :goto_d
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lteam/opay/pay/cashier/Instrument;->p:Ljava/lang/String;

    if-nez v2, :cond_e

    const/4 v2, 0x0

    goto :goto_e

    :cond_e
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_e
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lteam/opay/pay/cashier/Instrument;->q:Ljava/lang/String;

    if-nez v2, :cond_f

    const/4 v2, 0x0

    goto :goto_f

    :cond_f
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_f
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lteam/opay/pay/cashier/Instrument;->r:Ljava/lang/String;

    if-nez v2, :cond_10

    const/4 v2, 0x0

    goto :goto_10

    :cond_10
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_10
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lteam/opay/pay/cashier/Instrument;->s:Ljava/lang/String;

    if-nez v2, :cond_11

    const/4 v2, 0x0

    goto :goto_11

    :cond_11
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_11
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lteam/opay/pay/cashier/Instrument;->t:Ljava/lang/String;

    if-nez v2, :cond_12

    const/4 v2, 0x0

    goto :goto_12

    :cond_12
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_12
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lteam/opay/pay/cashier/Instrument;->u:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lteam/opay/pay/cashier/Instrument;->v:Ljava/lang/String;

    if-nez v2, :cond_13

    const/4 v2, 0x0

    goto :goto_13

    :cond_13
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_13
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lteam/opay/pay/cashier/Instrument;->w:Ljava/lang/String;

    if-nez v2, :cond_14

    const/4 v2, 0x0

    goto :goto_14

    :cond_14
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_14
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lteam/opay/pay/cashier/Instrument;->x:Ljava/lang/String;

    if-nez v2, :cond_15

    const/4 v2, 0x0

    goto :goto_15

    :cond_15
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_15
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lteam/opay/pay/cashier/Instrument;->y:Ljava/lang/String;

    if-nez v2, :cond_16

    const/4 v2, 0x0

    goto :goto_16

    :cond_16
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_16
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lteam/opay/pay/cashier/Instrument;->z:Ljava/util/List;

    if-nez v2, :cond_17

    const/4 v2, 0x0

    goto :goto_17

    :cond_17
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_17
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lteam/opay/pay/cashier/Instrument;->A:Ljava/util/List;

    if-nez v2, :cond_18

    const/4 v2, 0x0

    goto :goto_18

    :cond_18
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_18
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lteam/opay/pay/cashier/Instrument;->B:Ljava/lang/String;

    if-nez v2, :cond_19

    const/4 v2, 0x0

    goto :goto_19

    :cond_19
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_19
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lteam/opay/pay/cashier/Instrument;->C:Ljava/lang/String;

    if-nez v2, :cond_1a

    const/4 v2, 0x0

    goto :goto_1a

    :cond_1a
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1a
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lteam/opay/pay/cashier/Instrument;->D:Ljava/lang/String;

    if-nez v2, :cond_1b

    const/4 v2, 0x0

    goto :goto_1b

    :cond_1b
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1b
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lteam/opay/pay/cashier/Instrument;->E:Lteam/opay/pay/cashier/CashBackCombineInfo;

    if-nez v2, :cond_1c

    const/4 v2, 0x0

    goto :goto_1c

    :cond_1c
    invoke-virtual {v2}, Lteam/opay/pay/cashier/CashBackCombineInfo;->hashCode()I

    move-result v2

    :goto_1c
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lteam/opay/pay/cashier/Instrument;->F:Lteam/opay/pay/cashier/CashierGuide;

    if-nez v2, :cond_1d

    const/4 v2, 0x0

    goto :goto_1d

    :cond_1d
    invoke-virtual {v2}, Lteam/opay/pay/cashier/CashierGuide;->hashCode()I

    move-result v2

    :goto_1d
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lteam/opay/pay/cashier/Instrument;->G:Ljava/lang/String;

    if-nez v2, :cond_1e

    const/4 v2, 0x0

    goto :goto_1e

    :cond_1e
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1e
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lteam/opay/pay/cashier/Instrument;->H:Ljava/lang/String;

    if-nez v2, :cond_1f

    const/4 v2, 0x0

    goto :goto_1f

    :cond_1f
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1f
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lteam/opay/pay/cashier/Instrument;->I:Ljava/lang/String;

    if-nez v2, :cond_20

    const/4 v2, 0x0

    goto :goto_20

    :cond_20
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_20
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lteam/opay/pay/cashier/Instrument;->J:Ljava/lang/String;

    if-nez v2, :cond_21

    const/4 v2, 0x0

    goto :goto_21

    :cond_21
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_21
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lteam/opay/pay/cashier/Instrument;->K:Ljava/lang/String;

    if-nez v2, :cond_22

    const/4 v2, 0x0

    goto :goto_22

    :cond_22
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_22
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lteam/opay/pay/cashier/Instrument;->L:Ljava/lang/Boolean;

    if-nez v2, :cond_23

    const/4 v2, 0x0

    goto :goto_23

    :cond_23
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_23
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lteam/opay/pay/cashier/Instrument;->M:Ljava/lang/String;

    if-nez v2, :cond_24

    const/4 v2, 0x0

    goto :goto_24

    :cond_24
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_24
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lteam/opay/pay/cashier/Instrument;->N:Ljava/lang/String;

    if-nez v2, :cond_25

    const/4 v2, 0x0

    goto :goto_25

    :cond_25
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_25
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lteam/opay/pay/cashier/Instrument;->O:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    if-nez v2, :cond_26

    const/4 v2, 0x0

    goto :goto_26

    :cond_26
    invoke-virtual {v2}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->hashCode()I

    move-result v2

    :goto_26
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lteam/opay/pay/cashier/Instrument;->P:Ljava/lang/String;

    if-nez v2, :cond_27

    const/4 v2, 0x0

    goto :goto_27

    :cond_27
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_27
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lteam/opay/pay/cashier/Instrument;->Q:Ljava/lang/Boolean;

    if-nez v2, :cond_28

    const/4 v2, 0x0

    goto :goto_28

    :cond_28
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_28
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lteam/opay/pay/cashier/Instrument;->R:Lteam/opay/pay/cashier/OverDraftInfo;

    if-nez v2, :cond_29

    const/4 v2, 0x0

    goto :goto_29

    :cond_29
    invoke-virtual {v2}, Lteam/opay/pay/cashier/OverDraftInfo;->hashCode()I

    move-result v2

    :goto_29
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lteam/opay/pay/cashier/Instrument;->S:Lteam/opay/pay/cashier/OwealthAutoSavingInfo;

    if-nez v2, :cond_2a

    const/4 v2, 0x0

    goto :goto_2a

    :cond_2a
    invoke-virtual {v2}, Lteam/opay/pay/cashier/OwealthAutoSavingInfo;->hashCode()I

    move-result v2

    :goto_2a
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lteam/opay/pay/cashier/Instrument;->T:Ljava/util/LinkedHashMap;

    if-nez v2, :cond_2b

    const/4 v2, 0x0

    goto :goto_2b

    :cond_2b
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_2b
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lteam/opay/pay/cashier/Instrument;->U:Ljava/util/LinkedHashMap;

    if-nez v2, :cond_2c

    const/4 v2, 0x0

    goto :goto_2c

    :cond_2c
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_2c
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lteam/opay/pay/cashier/Instrument;->V:Ljava/lang/Long;

    if-nez v2, :cond_2d

    const/4 v2, 0x0

    goto :goto_2d

    :cond_2d
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_2d
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lteam/opay/pay/cashier/Instrument;->W:Ljava/lang/Long;

    if-nez v2, :cond_2e

    goto :goto_2e

    :cond_2e
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_2e
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 51
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    move-object/from16 v0, p0

    iget-object v1, v0, Lteam/opay/pay/cashier/Instrument;->a:Lteam/opay/pay/cashier/PayChannel;

    iget-object v2, v0, Lteam/opay/pay/cashier/Instrument;->b:Ljava/lang/String;

    iget-object v3, v0, Lteam/opay/pay/cashier/Instrument;->c:Ljava/lang/String;

    iget-object v4, v0, Lteam/opay/pay/cashier/Instrument;->d:Ljava/lang/String;

    iget-object v5, v0, Lteam/opay/pay/cashier/Instrument;->e:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    iget-object v6, v0, Lteam/opay/pay/cashier/Instrument;->f:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    iget-object v7, v0, Lteam/opay/pay/cashier/Instrument;->g:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    iget-object v8, v0, Lteam/opay/pay/cashier/Instrument;->h:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    iget-object v9, v0, Lteam/opay/pay/cashier/Instrument;->i:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    iget-object v10, v0, Lteam/opay/pay/cashier/Instrument;->j:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    iget-object v11, v0, Lteam/opay/pay/cashier/Instrument;->k:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    iget-object v12, v0, Lteam/opay/pay/cashier/Instrument;->l:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    iget-object v13, v0, Lteam/opay/pay/cashier/Instrument;->m:Ljava/lang/String;

    iget-object v14, v0, Lteam/opay/pay/cashier/Instrument;->n:Lteam/opay/pay/cashier/InstrumentStatus;

    iget-object v15, v0, Lteam/opay/pay/cashier/Instrument;->o:Ljava/util/ArrayList;

    move-object/from16 v16, v15

    iget-object v15, v0, Lteam/opay/pay/cashier/Instrument;->p:Ljava/lang/String;

    move-object/from16 v17, v15

    iget-object v15, v0, Lteam/opay/pay/cashier/Instrument;->q:Ljava/lang/String;

    move-object/from16 v18, v15

    iget-object v15, v0, Lteam/opay/pay/cashier/Instrument;->r:Ljava/lang/String;

    move-object/from16 v19, v15

    iget-object v15, v0, Lteam/opay/pay/cashier/Instrument;->s:Ljava/lang/String;

    move-object/from16 v20, v15

    iget-object v15, v0, Lteam/opay/pay/cashier/Instrument;->t:Ljava/lang/String;

    move-object/from16 v21, v15

    iget v15, v0, Lteam/opay/pay/cashier/Instrument;->u:I

    move/from16 v22, v15

    iget-object v15, v0, Lteam/opay/pay/cashier/Instrument;->v:Ljava/lang/String;

    move-object/from16 v23, v15

    iget-object v15, v0, Lteam/opay/pay/cashier/Instrument;->w:Ljava/lang/String;

    move-object/from16 v24, v15

    iget-object v15, v0, Lteam/opay/pay/cashier/Instrument;->x:Ljava/lang/String;

    move-object/from16 v25, v15

    iget-object v15, v0, Lteam/opay/pay/cashier/Instrument;->y:Ljava/lang/String;

    move-object/from16 v26, v15

    iget-object v15, v0, Lteam/opay/pay/cashier/Instrument;->z:Ljava/util/List;

    move-object/from16 v27, v15

    iget-object v15, v0, Lteam/opay/pay/cashier/Instrument;->A:Ljava/util/List;

    move-object/from16 v28, v15

    iget-object v15, v0, Lteam/opay/pay/cashier/Instrument;->B:Ljava/lang/String;

    move-object/from16 v29, v15

    iget-object v15, v0, Lteam/opay/pay/cashier/Instrument;->C:Ljava/lang/String;

    move-object/from16 v30, v15

    iget-object v15, v0, Lteam/opay/pay/cashier/Instrument;->D:Ljava/lang/String;

    move-object/from16 v31, v15

    iget-object v15, v0, Lteam/opay/pay/cashier/Instrument;->E:Lteam/opay/pay/cashier/CashBackCombineInfo;

    move-object/from16 v32, v15

    iget-object v15, v0, Lteam/opay/pay/cashier/Instrument;->F:Lteam/opay/pay/cashier/CashierGuide;

    move-object/from16 v33, v15

    iget-object v15, v0, Lteam/opay/pay/cashier/Instrument;->G:Ljava/lang/String;

    move-object/from16 v34, v15

    iget-object v15, v0, Lteam/opay/pay/cashier/Instrument;->H:Ljava/lang/String;

    move-object/from16 v35, v15

    iget-object v15, v0, Lteam/opay/pay/cashier/Instrument;->I:Ljava/lang/String;

    move-object/from16 v36, v15

    iget-object v15, v0, Lteam/opay/pay/cashier/Instrument;->J:Ljava/lang/String;

    move-object/from16 v37, v15

    iget-object v15, v0, Lteam/opay/pay/cashier/Instrument;->K:Ljava/lang/String;

    move-object/from16 v38, v15

    iget-object v15, v0, Lteam/opay/pay/cashier/Instrument;->L:Ljava/lang/Boolean;

    move-object/from16 v39, v15

    iget-object v15, v0, Lteam/opay/pay/cashier/Instrument;->M:Ljava/lang/String;

    move-object/from16 v40, v15

    iget-object v15, v0, Lteam/opay/pay/cashier/Instrument;->N:Ljava/lang/String;

    move-object/from16 v41, v15

    iget-object v15, v0, Lteam/opay/pay/cashier/Instrument;->O:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    move-object/from16 v42, v15

    iget-object v15, v0, Lteam/opay/pay/cashier/Instrument;->P:Ljava/lang/String;

    move-object/from16 v43, v15

    iget-object v15, v0, Lteam/opay/pay/cashier/Instrument;->Q:Ljava/lang/Boolean;

    move-object/from16 v44, v15

    iget-object v15, v0, Lteam/opay/pay/cashier/Instrument;->R:Lteam/opay/pay/cashier/OverDraftInfo;

    move-object/from16 v45, v15

    iget-object v15, v0, Lteam/opay/pay/cashier/Instrument;->S:Lteam/opay/pay/cashier/OwealthAutoSavingInfo;

    move-object/from16 v46, v15

    iget-object v15, v0, Lteam/opay/pay/cashier/Instrument;->T:Ljava/util/LinkedHashMap;

    move-object/from16 v47, v15

    iget-object v15, v0, Lteam/opay/pay/cashier/Instrument;->U:Ljava/util/LinkedHashMap;

    move-object/from16 v48, v15

    iget-object v15, v0, Lteam/opay/pay/cashier/Instrument;->V:Ljava/lang/Long;

    move-object/from16 v49, v15

    iget-object v15, v0, Lteam/opay/pay/cashier/Instrument;->W:Ljava/lang/Long;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v50, v15

    const-string v15, "Instrument(payChannel="

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", displayName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", voucherId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", amount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", actualAmount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", feeAmount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", fakeFeeAmount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", discountAmount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", cashback="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", voucherAmount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", scaleAmount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", displayText="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", cardList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", activityId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", snapshot="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", displayBottom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", voucherCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", iconUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", order="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", recipientInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", voucherDesc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", promptInformation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", randomText="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", amountViews="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", amountViewsV2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", combinePayChannel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", combineDesc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", cashBackText="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", cashBackCombineInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", cashierGuide="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", activityCashbackDesc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", logo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", recommendedLabel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", promotionalCopy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", paymentCopy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", hasChoose="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", feeRefund="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", payChannelVoucherId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", payChannelVoucherAmount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", payChannelVoucherDesc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isSupportOverdraft="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", overDraftInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", owealthAutoSavingInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", cashbackAuthInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", payAuthInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", timestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", localTimestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
