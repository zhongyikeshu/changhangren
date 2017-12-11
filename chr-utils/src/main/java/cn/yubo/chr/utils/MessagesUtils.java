package cn.yubo.chr.utils;

import java.util.ArrayList;
import java.util.List;

import cn.yubo.chr.domain.Message;
import cn.yubo.chr.domain.Node;

public class MessagesUtils
{
    public static List<Message> getConvertNode(List<Message> list) {//对外开放接口,返回排序后的集合表
    //各节点之间建立连接关系
        connectNodes(list);
        //获取所有的根节点
        List<Message> rootNodes = getRootNodes(list);
        //建立空表，储存排序后的节点
        List<Message> result = new ArrayList<Message>();


        for (int i = 0; i < rootNodes.size(); i++)
        {//根据每个根节点，将其所属节点添加到空表中
            //递归添加节点
            addNodeToResult(result, rootNodes.get(i));
        }

        return result;
    }



    private static void connectNodes(List<Message> list)
    {//各节点之间建立连接关系
        for (int i = 0; i < list.size() -1; i++)
        {
            Message nodeLast = list.get(i);
            for (int j = i + 1; j < list.size(); j++)
            {
                Message nodeNext = list.get(j);
                if (nodeLast.getRootNumber() == nodeNext.getRootNumber())//判断是否处于同一树
                {
                    if (nodeNext.getMessage()!=null && nodeNext.getMessage().getMessageNum() == nodeLast.getMessageNum())
                    {
                        nodeLast.setChildren(nodeNext);
                        nodeNext.setMessage(nodeLast);
                    }
                    else if (nodeLast.getMessage()!=null &&(nodeNext.getMessageNum() == nodeLast.getMessage().getMessageNum()))
                    {
                        nodeNext.setChildren(nodeLast);
                        nodeLast.setMessage(nodeNext);
                    }
                }
            }
        }

    }

    private static List<Message> getRootNodes(List<Message> list)
    {//获取所有的根节点
        List<Message> rootNodes = new ArrayList<Message>();

        int length = list.size();
        for (int i = 0; i < length; i++)
        {
                if (list.get(i).isRoot())
                {
                    rootNodes.add(list.get(i));
                }
        }
            return rootNodes;
    }

    private static void addNodeToResult(List<Message> result, Message node)//递归添加节点
    {
        result.add(node);

        if (node.isLeaf())
        {
            return;
        }

        List<Message> list = node.getChildrenList();

        for (int i = 0; i < list.size(); i++)
        {
            addNodeToResult(result, list.get(i));
        }
    }
}